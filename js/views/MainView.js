function MainView(){
	var mainMenu;
	var subMenu;
	var titleName;
	var langButton;
	
	var imgHolder;
	
	function init(){
		mainMenu = $("#main .orange .menu");
		subMenu = $("#main .white .menu");
		langButton = $("#main .orange .langButton");	
		imgHolder = $("#main .white .imgHolder");
		
		//
		BSEvents.subscribe(BSEvents.STRUCTURE_LOADED,onStructureLoaded);
		
		
	}
	
	function onStructureLoaded(){
		
		titleName = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "NAME_ENG" : "NAME_HUN";
		
		var mainMenuStr = '';
		for(var i = 0; i < ConfigModel.mainMenu.length; i++){
			mainMenuStr += '<span class="elem unselectable">' + ConfigModel.mainMenu[i][titleName].toUpperCase() + '</span>';
			//menuStr += ConfigModel.mainMenu[i].title.toUpperCase() + ' ';
		}
		mainMenu.html(mainMenuStr);
		
		var subMenuStr = '';
		for(var i = 0; i < ConfigModel.subMenu.length; i++){
			subMenuStr += '<span class="elem unselectable">' + ConfigModel.subMenu[i][titleName].toUpperCase() + '</span>';
			//menuStr += ConfigModel.mainMenu[i].title.toUpperCase() + ' ';
		}		
		subMenu.html(subMenuStr);
		
		if(ConfigModel.useCanvas)
		{
			var  imgs = '';
			var imgCount = ConfigModel.mainPictures.length;
			for(var i = 0; i < imgCount; i++){
				imgs += '<canvas width="100" height="100" />'; 
			}
			imgHolder.html(imgs);
			
			setImgs();
		}
		
		setLangButton();
		addListeners();
	}
	
	function addListeners(){
		$("#wrapper #main .orange .menu .elem").click(loadMainMenuPoints);
		$("#wrapper #main .white .menu .elem").click(loadSubMenuPoints);
		langButton.click(changeLanguage);
	}
	
	function loadMainMenuPoints(){
		var index = $(this).index();
		var page = ConfigModel.mainMenu[index].idString;
		ConfigModel.navigatorManager.navigateTo(page,ConfigModel.actLanguage);
	}
	function loadSubMenuPoints(){
		var index = $(this).index();
		var page = ConfigModel.subMenu[index].idString;
		ConfigModel.navigatorManager.navigateTo(page,ConfigModel.actLanguage);
	}
	
	function setLangButton(){
		var templ = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "hun" : "eng";
		langButton.html(templ);
	}
	
	function changeLanguage(e){
		var lang = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "hun" : "eng";
		ConfigModel.navigatorManager.navigateTo(ConfigModel.actPage,lang);
	}
	
	function setImgs(){
		var imgs = $("#wrapper #main .white .imgHolder canvas");
		var imgCount = ConfigModel.mainPictures.length;
		for(var i = 0; i < imgCount; i++){
			var circleImage = new CircleImage($(imgs[i]),'images/'+ConfigModel.mainPictures[i].name);
		}
	}
	
	return{
		init:init
	}
}
