//提取参数

$.fn.getConfig = function(){
	   var config = this.attr('mod-config');
	   var arr;
	   
	   if(!config) return;
	   
	   arr = config.match(/[^:;]+/g);
	   var option ={};
	   $(arr).each(function(index){
		   if(index%2){
			   return;
		   }
		   option[this] = arr[index+1];
		   if(!isNaN(+arr[index+1])){
			   option[this] = +arr[index+1];
		   }
		  
	   });
	   return option;
};

(function(){
	var plugQueue = [],
		hasStart = false;
	
	$.startAllPlugin = function(map){
		if(hasStart) return;
		hasStart = true;
		$(function(){
			for(var selector in map){
				var plugName = map[selector];
				$(selector)[plugName]();
			}
		});
	};
	
	$.autoStartPlugin = function() {
		if(hasStart) return;
		hasStart = true;
		$(function(){
			$('div[mod-type]').each(function(index) {
			  var mod = $(this),
			  	  plugin = mod.attr('mod-type').replace(/^./,function($0){
			  	  	return $0.toLowerCase();
			  	  });
			  mod[plugin]();
			});
		});
	};
	
	$.addPlugin = function(plugin){
		plugQueue.push($.fn[plugin]);
	};
	
	$.autoStartPlugin();
})();

