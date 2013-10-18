var Navigator = function(){
	
	ConfigModel.tracer.log("Navigator created");
	var pageWindow;
	var scrollOffset;

	function init(){
		scrollOffset = $("#fixedMenu").height() - 2;
		
		pageWindow = $(window);
		parseHash();
		
		
		BSEvents.subscribe(BSEvents.ALL_CONTENTS_LOADED,setScrollManager);
	}
	
	// on hash change
	$(window).bind( 'hashchange', onHashChange);
	
	function onHashChange(event){
		
		parseHash();
		changeLanguage();
		loadContent();
	}
	
	function parseHash(){
		var hash_str = window.location.hash.replace("#","");
		var hashes = hash_str.split("&");
		
		var hashCount = hashes.length;
		for(var i = 0; i < hashCount; i++){
			var splitted = hashes[i].split("=");
			var name = splitted[0];
			var value =  splitted[1];
			
			// lang
			if(name == ConfigModel.navigatorModel.nameSpace.LANGUAGE)
				{
					if(value == ConfigModel.navigatorModel.langIDs.HUN)
						ConfigModel.actLanguage = ConfigModel.navigatorModel.langIDs.HUN;
					else if(value == ConfigModel.navigatorModel.langIDs.ENG)
						ConfigModel.actLanguage = ConfigModel.navigatorModel.langIDs.ENG;
					else
						ConfigModel.actLanguage = ConfigModel.navigatorModel.langIDs.ENG;
				}
			// page	
			if(name == ConfigModel.navigatorModel.nameSpace.PAGE){
				ConfigModel.actPage = (value == '') ? ConfigModel.navigatorModel.pageIDs.MAIN : value;
			}
					
		}
		
	}
	
	function loadContent(jump){
		var offset = $("#" + ConfigModel.actPage).offset();
		
		if(offset == null || offset.top == null)
			{
				ConfigModel.tracer.logError("loadContent: offset().top was null");
				return;
			}
		
		var target = offset.top - scrollOffset;
		
		//TODO: count the time according to the distance, set animation function  

		var time = 1500;
		if(jump || $.browser.msie && parseFloat($.browser.version) <= 8)
			{
				time = 0;
				
			}
			
		 	$('html,body').clearQueue();
  			$('html,body').stop();
  			
			$('html,body').animate({
	          scrollTop: target
	        }, time);
      	 onScroll();
	}
	
	function changeLanguage(){
		if(ConfigModel.actLanguage != ConfigModel.actLanguageHistory){
			BSEvents.dispatchEvent(BSEvents.CHANGE_LANGUAGE);
			ConfigModel.actLanguageHistory = ConfigModel.actLanguage;
		}
	}
	
	function navigateTo(p_page,p_lang){
		if(p_page != null && p_page != '' && !p_lang)
			{
				BSEvents.dispatchEvent(BSEvents.NAVIGATOR_ERROR_WRONG_NAMESPACE);
				return;
			}
			
		var hash = ConfigModel.navigatorModel.nameSpace.PAGE + "=" + p_page;
		hash += "&" + ConfigModel.navigatorModel.nameSpace.LANGUAGE + "=" + p_lang;
		
		if(window.location.hash == "#" + hash)
			loadContent();
			
		window.location.hash = hash;		
	}
	
	var scrollMap;
	var prevScrollPoint;
	var scrollPoint;
	function setScrollManager(){
		scrollMap = [];
		for(var i = 0; i < $("#wrapper > div").length; i++){
			scrollMap[i] = {};
			scrollMap[i].top = $($("#wrapper > div")[i]).offset().top;
			scrollMap[i].bottom = $($("#wrapper > div")[i]).offset().top + $($("#wrapper > div")[i]).height() ;
			scrollMap[i].name = $($("#wrapper > div")[i]).attr('id');
			scrollMap[i].index = i;
		}
		
		loadContent(true);
		pageWindow.scroll(onScroll);
	}
	
	function onScroll(e,d){
		var actPoint;
		var y = pageWindow.scrollTop();
		for(var i = 0; i < scrollMap.length; i++){
			if(y < scrollMap[i].bottom - scrollOffset){
				actPoint = scrollMap[i].name;
				dispachMenuChange(scrollMap[i]);
				return;		
			}
		}
		
	}
	function dispachMenuChange(scrollMapPoint){
		
		ConfigModel.tracer.log(scrollMapPoint.name);
		scrollPoint = scrollMapPoint.name;
		if(scrollPoint != prevScrollPoint)
			{
				
				ConfigModel.tracer.log("changed!!!");
				if(scrollPoint == ConfigModel.navigatorModel.pageIDs.MAIN)
					BSEvents.dispatchEvent(BSEvents.HIDE_FIXED_MENU);
				else
					BSEvents.dispatchEvent(BSEvents.SHOW_FIXED_MENU);
					
				ConfigModel.fixedMenu.switchState(scrollMapPoint.index - 1);	
				
			}
		prevScrollPoint = scrollPoint;
	}
	return{
		init: init,
		navigateTo:navigateTo
	};
}
