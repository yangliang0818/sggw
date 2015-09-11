/*导航效果*/
 $.fn.tabShow = function(option) { //$.fn是整个jquery对象的原型
    this.each(function(index){
		var mod = $(this);
		var Items = mod.find('[mod-comp=TabShow-Item]');
		var expand = Items.find('[mod-comp=TabShow-Item-Expand]');
		Items.on('mouseenter',function(){
		   //console.log(expand);
		   if(expand){
		     expand.show();
		   }
		});
		Items.on('mouseleave',function(){
		   //console.log(expand);
		   if(expand){
		     expand.hide();
		   }
		});
	})	
 };
