/*图片滑动幻灯片效果*/

   $.fn.slideShow = function(option) { //$.fn是整个jquery对象的原型
	   
	   /*设置默认的参数选项*/
	   var defaultOption = {
			pieceSize : 1,
			speed : 400,
			autoPlay : true,
			interval : 5000,
			effect : 'slide'
	   };
	   
	   
	   this.each(function(index){
	   	  
		   var mod = $(this);
		   /*用传参覆盖默认参数选项*/  
	   	   var actualOption = $.extend(defaultOption, option, mod.getConfig());
		   var viewport = mod.find('[mod-comp=SlideShow-Viewport]'); //展示内容的窗口-视口
		   var content= mod.find('[mod-comp=SlideShow-Content]'); //容纳内容
		   var Items = content.find('[mod-comp=SlideShow-Item]'); //内容项
		   var triggle = mod.find('[mod-comp=SlideShow-Triggle]');//控制条
		   var triggleItems = mod.find('[mod-comp=SlideShow-Triggle-Item]');//控制条的内容项
		   
		   if(Items.length <= 1) return;
		   
		   /*判断幻灯片播放的方向，横排或者是竖排*/
		   var offset = Items[1].offsetLeft - Items[0].offsetLeft; //单个内容项的宽度
		   var direction = "left";
		   var viewportRange = viewport.width();
		   /*竖排*/
		   if(offset == 0){
			  offset = Items[1].offsetTop - Items[0].offsetTop;
			  direction = "top";
			  viewportRange = viewport.height();
		   }else{
			   /*设置容纳内容区域的时间宽度*/
			   content.css({
				   width : Items.length*offset
			   });
		   }
		   
		   /*找到控制按钮*/
		   var prevBtn = mod.find('[mod-comp=SlideShow-PrevBtn]');
		   var nextBtn = mod.find('[mod-comp=SlideShow-NextBtn]');
		   
		   
		   var property = {};
		   var pieceSize = actualOption.pieceSize; //一次移动的个数
		   var viewportSize = Math.round(viewportRange / offset); //视口显示内容项的个数
		   var pieceIndex = 0; //当前屏数
		   
		   /*排除一些特殊的情况*/
		   
		   /*如果给定一屏的大小小于视口的大小，则重置为相等*/
		   if(pieceSize > viewportSize){
			   pieceSize = viewportSize;
		   }
		   //如果视口大于1，不能以新闻消息形式连续播放
		   if(viewportSize > 1){
			   delete actualOption.type;
		   }
		   /*如果有控制条出现的时候，一屏的大小应该和视口的大小相等*/
		   if(triggle.length){
			   pieceSize = viewportSize;
		   }
		   
		   var totalPiece = Math.ceil(Items.length/pieceSize); //总共的屏数
		   var pieceOffset = pieceSize * offset; //一屏偏移量
		   
		   function hasOnlyOneRemainPiece(){  //当剩下只有一屏
			   return (totalPiece-pieceIndex) == 1; 
		   }
		   
		   function hasNotExtraHidItem(){  //没有多余剩下的内容项
		   	  if(actualOption.effect !== 'fade')
			  	return Items.length - (pieceIndex * pieceSize) <= viewportSize ;
			  return false;
		   }
		   
		   var timer;
		   
		   function initAutoSlide(){
			   if(!actualOption.autoPlay) {
				   return 1;
			   }
			   timer = setInterval(function(){
				   if(hasOnlyOneRemainPiece() || hasNotExtraHidItem()){
					   pieceIndex = -1;
				   }
				   toPiece(pieceIndex+1,function(){
					   if(triggle.length){
						   triggleItems.removeClass('on');
						   triggleItems.eq(pieceIndex).addClass('on');
					   }
				   });
				   
			   }, actualOption.interval);	
		   }
		   
		   initAutoSlide();
		   btnBoundaryDisable();

		   
		   /*向后偏移*/ 
		   nextBtn.on('click',function(event){
			  event.preventDefault();
			  toPiece(pieceIndex+1);
			  clearInterval(timer);
		   });
		   
		  /*向前偏移*/ 
		   prevBtn.on('click',function(event){  
			   event.preventDefault();
			   toPiece(pieceIndex-1);
			   clearInterval(timer);
		   });
		   
		   //控制slideshow的显示效果
		   var Effect = {};
		   Effect.create = function(){
		   		if(actualOption.effect == 'fade'){
		   			return fadeEffect;
		   		}else{
		   			return slideEffect;
		   		}
		   };
		   
		   //slideshow的显示效果为左右移动（默认显示效果）
		   var slideEffect = {};
		   slideEffect.apply = function(index,fn){ 
		   	
			  property[direction] = -pieceOffset * index;
			  if(actualOption.type === 'news'){
				   if(index === 0 && (pieceIndex === -1 || pieceIndex === Items.length - 1)){
					   var prop = {};
					   prop[direction] = pieceOffset * Items.length;
					   prop['position'] = 'relative';
					   Items.eq(0).css(prop);
					   property[direction] = -prop[direction];
				   }
				   if(index === 1){
					   content.css(direction, 0);
					   Items.eq(0).css('position','static');
				   }
			   }
			   
			   content.stop(true).animate(property,actualOption.speed,fn);  
		   }
		   
		  //slideshow的显示效果为淡入淡出（需要在html中配置mod-config的参数effect：fade）
		   var fadeEffect = {};
		   fadeEffect.apply = function(index, fn){
			  //TODO fade effect
			  var cur = Items.eq(pieceIndex),
			  	  target = Items.eq(index);
			  cur.stop(true).animate({
			  	opacity : 0
			  },actualOption.speed,function(){
			  	cur.removeClass('on');
			  	target.addClass('on');
			  });
			  
			  target.stop(true).animate({
		  		 opacity : 1
		  	  },actualOption.speed);
		   }
		  
		  /*切换到当前屏*/ 
		  function toPiece(index, fn){ //index这里指代目标屏
		  	 //pieceIndex 当前屏 ，index 目标屏
		   	  if(pieceIndex < index){     
				  if(hasOnlyOneRemainPiece() || hasNotExtraHidItem()){
					   return;
				   }
			  }
		  
			  if(index < 0){
				   return;
			  }
			  
			  var effect = Effect.create();
			  effect.apply(index, fn);
			  
			  pieceIndex = index;
			  
			  btnBoundaryDisable();  //控制到最后一屏，或者第一屏的时候是否隐藏按钮

		  }
		  
		 //控制前后切换按钮显示隐藏 
		 function btnBoundaryDisable(){
		  	  if(!actualOption.btnBoundaryDisable) return;
		  	  if(isNextEnd(pieceIndex+1)){
			  	nextBtn.addClass('disable');
			  }else{
			  	nextBtn.removeClass('disable');
			  }
			  if(isPrevEnd(pieceIndex-1)){
			  	prevBtn.addClass('disable');
			  }else{
			  	prevBtn.removeClass('disable');
			  }
		  }
		 
		 //是否按钮不能继续向后点击 
          function isNextEnd(index){
		  	 if(pieceIndex < index){
				  if(hasOnlyOneRemainPiece() || hasNotExtraHidItem()){
					   return true;
				   }
			  }
			  return false;
		  }
		 
	   //是否按钮不能继续向前点击  
		  function isPrevEnd(index){
		  	  if(index < 0){
				   return true;
			  }
			  return false;
		  }
		  
		  /*鼠标经过控制条的显示*/ 
		   triggleItems.on('mouseenter',function(){
			 toPiece(triggleItems.index(this));
			 triggleItems.removeClass('on');
			 $(this).addClass('on');
		  });
		  
		  viewport.add(triggle).add(prevBtn).add(nextBtn).on('mouseenter',function(){
			 clearInterval(timer);
		  }).on('mouseleave',function(){
			  initAutoSlide();
		  });
	   
	   });
   };
   
   $.addPlugin('slideShow');
  