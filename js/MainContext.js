$(document).ready(function(){

 var version = '2013-10-02-11-03';
	
  // lists of css-s
  var cssURLs = ["css/bs.css"];
  
  // lists of javascripts
  var jsURLs = [
                //"js/utils/jquery.ba-bbq.min.js",              
                "js/utils/BSEvents.js",          
                "js/utils/Navigator.js",
                "js/models/ConfigModel.js",
                "js/services/ContentService.js",
                "js/views/MainView.js",
                "js/views/components/CircleImage.js",
                "js/views/PictureView.js",
                "js/views/ContentsView.js",
                "js/views/FixedMenu.js"                  
                ];


	//ExternalSourceService().load(cssURLs,jsURLs,init,version);
	
	init();
	
	function init(){
		
		ConfigModel.isIE9 = ($.browser.msie && parseFloat($.browser.version) == 9);
		ConfigModel.useCanvas = !Boolean(window.G_vmlCanvasManager)
		
		ConfigModel.tracer = new Tracer();
		ConfigModel.tracer.log("bs2013");
		
		ConfigModel.contentService = new ContentService();

		ConfigModel.mainView = new MainView();
		ConfigModel.mainView.init();
		
		ConfigModel.fixedMenu = new FixedMenu();
		ConfigModel.fixedMenu.init();
		
		ConfigModel.navigatorManager = new Navigator();
		ConfigModel.navigatorManager.init();
		
		
		ConfigModel.contentsView = new ContentsView();
		ConfigModel.contentsView.init();
		
		ConfigModel.pictureView = new PictureView();
		ConfigModel.pictureView.init();
		
		if(ConfigModel.isIE9){
			$("#wrapper #main .orange").addClass('gradient');
		}
		
		ConfigModel.contentService.loadStructure();

	}
	

	
})
