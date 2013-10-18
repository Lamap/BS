function FixedMenu(){
	var view;
	var mainMenu;
	var subMenu;
	var logoTitle;
	var subMenuButtons;
	var mainMenuButtons;
	var langButton;
	var titleName;
	
	function init(){
		view = $("#fixedMenu");
		
		mainMenu = $("#fixedMenu .mainMenu");
		subMenu = $("#fixedMenu .subMenu");
		logoTitle = $("#fixedMenu .logoTitle");
		langButton = $("#fixedMenu .langButton");
		BSEvents.subscribe(BSEvents.STRUCTURE_LOADED,onStructureLoaded);
		
	}
	
	function onStructureLoaded(){
				//
		titleName = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "NAME_ENG" : "NAME_HUN";
		var mainMenuStr = '';
		
		for(var i = 0; i < ConfigModel.mainMenu.length; i++){
			mainMenuStr += '<span class="elem unselectable">' + ConfigModel.mainMenu[i][titleName].toUpperCase() + '</span>';

		}
		mainMenu.html(mainMenuStr);
		
		var subMenuStr = '';
		for(var i = 0; i < ConfigModel.subMenu.length; i++){
			var title = ConfigModel.subMenu[i][titleName].toUpperCase();
			subMenuStr += '<span class="elem unselectable"><span class="shadow">' + title + '</span>' + '<span class="base unselectable">' + title + '</span></span>';

		}
		subMenu.html(subMenuStr);
		
		
		mainMenuButtons = $("#fixedMenu .mainMenu .elem");
		subMenuButtons = $("#fixedMenu .subMenu .elem");
		
		setLangButton();
		
		addListeners();		
	}
	
	function addListeners(){
		mainMenuButtons.click(loadMainMenuPoints);
		subMenuButtons.click(loadSubMenuPoints);
		logoTitle.click(onLogoTitleClicked);
		BSEvents.subscribe(BSEvents.SHOW_FIXED_MENU,show);
		BSEvents.subscribe(BSEvents.HIDE_FIXED_MENU,hide);
		langButton.click(changeLanguage);
		
	};
	function loadMainMenuPoints(){
		var index = $(this).index();
		var page = ConfigModel.mainMenu[index].idString;
		ConfigModel.navigatorManager.navigateTo(page,ConfigModel.actLanguage);
		
		if($.browser.msie && parseFloat($.browser.version) <= 8)
			switchState(index);
	}
	function loadSubMenuPoints(){
		var index = $(this).index();
		var page = ConfigModel.subMenu[index].idString;
		ConfigModel.navigatorManager.navigateTo(page,ConfigModel.actLanguage);
		
		if($.browser.msie && parseFloat($.browser.version) <= 8)
			switchState(index + 4);
	}
	function onLogoTitleClicked(){
			ConfigModel.navigatorManager.navigateTo("",ConfigModel.actLanguage);
	}
	
	function show(e){
		view.show();
		//view.slideDown();
	}
	function hide(e){
		view.hide();
	}
	
	function switchState(p_index){
		
		if(p_index == -1)
			return;
		
		clearStates();
		var parsedIndex;
		if(p_index < ConfigModel.mainMenu.length)
			{
				parsedIndex = p_index;
				$($("#fixedMenu .mainMenu .elem")[parsedIndex]).addClass("selected");
			}
		else
			{
				parsedIndex = p_index - ConfigModel.mainMenu.length ;
				$($("#fixedMenu .subMenu .elem")[parsedIndex]).addClass("selected");
			}
		
	}
	function clearStates(){
		mainMenuButtons.removeClass("selected");
		subMenuButtons.removeClass("selected");
	}
	
	function setLangButton(){
		var templ = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "hun" : "eng";
		langButton.html(templ);
	}
	
	function changeLanguage(e){
		var lang = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "hun" : "eng";
		ConfigModel.navigatorManager.navigateTo(ConfigModel.actPage,lang);
	}
	
	return{
		init:init,
		switchState:switchState
		}
}
