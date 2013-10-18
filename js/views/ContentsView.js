function ContentsView(){
	
	var contents;
	var contentHolder;
	var circleImages;
	var langNameSpace;
	
	var imageCountPerRows = 4;
	
	function init(){
		contentHolder = $("#wrapper");
		BSEvents.subscribe(BSEvents.STRUCTURE_LOADED,onStructureLoaded);
		BSEvents.subscribe(BSEvents.CHANGE_LANGUAGE,reloadContentForLangChange);	
	}
	function reloadContentForLangChange(){
		$("#wrapper .contentElem").remove();
		BSEvents.subscribe(BSEvents.STRUCTURE_LOADED,onStructureLoaded);
		ConfigModel.contentService.loadStructure();
	}
	
	function onStructureLoaded(){
		BSEvents.unSubscribe(BSEvents.STRUCTURE_LOADED,onStructureLoaded);
		drawContent();
	}
	
	function drawContent(){
		
		langNameSpace = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "TEXT_CONTENT_ENG" : "TEXT_CONTENT_HUN";
		
		for(var i = 0; i < ConfigModel.mainMenu.length; i++){
			var id = ConfigModel.mainMenu[i].idString;
			var elem = '<div class="contentElem" id="' + id +'">';			
			elem += ConfigModel.decodeOU(ConfigModel.mainMenu[i][langNameSpace]);					
			elem += '</div>';
			contentHolder.append(elem);
			
		}
		for(var i = 0; i < ConfigModel.subMenu.length; i++){
			
			var id = ConfigModel.subMenu[i].idString;
			var elem = '<div class="contentElem" id="' + id +'">';
			
			if(ConfigModel.subMenu[i].IMAGES.length > 0)
				elem += drawCircleImages(ConfigModel.subMenu[i]);
			else
				elem += ConfigModel.decodeOU(ConfigModel.subMenu[i][langNameSpace]);
			
			elem += '</div>';
			contentHolder.append(elem);
			
		}
		contents = $("#wrapper .contentElem");
		
		BSEvents.dispatchEvent(BSEvents.ALL_CONTENTS_LOADED);
		
		circleImages = $("#wrapper .contentElem .circleImage");
		circleImages.click(onCricleClicked);
		
		setUpCircleImages();
	}
	
	function drawCircleImages(p_node){
		titleNameSpace = (ConfigModel.actLanguage == ConfigModel.navigatorModel.langIDs.ENG) ? "NAME_ENG" : "NAME_HUN";
		var templ = '<p class="imageSetTitle">' + p_node[titleNameSpace] + '</p>';
		for(var i = 0; i < p_node.IMAGES.length; i++){
			var src = 'images/' + p_node.IMAGES[i].name;
			var style = '';//'background: url(\'' + src + '\');';
			var img = 'images/' + p_node.IMAGES[i].name;
			templ += '<canvas width="140" height="140" class="circleImage" imgSrc="' + src + '" style="' + style + '" imgID="' + p_node.id + '"></canvas>';
		}
		
		return templ;
	}
	
	function onCricleClicked(){

		var eventObj = {};
		eventObj.id = $(this).attr("imgID");
		eventObj.index = $(this).index() - 1;
		BSEvents.dispatchEvent(BSEvents.OPEN_PICTURE,eventObj);
	}
	
	function setUpCircleImages(){
		var count = circleImages.length;
		
		var contentWidth = $("#wrapper .contentElem").width();
		
		for(var i = 0; i < count; i++){
			
			if(ConfigModel.useCanvas)	
			{
				var circle = $(circleImages[i]);
				var image = $(circleImages[i]).attr('imgSrc');
				var circleCanvas = new CircleImage(circle,image);
							
			}
			else{
				$(circleImages[i]).css('background','url("' + $(circleImages[i]).attr('imgSrc') + '")');
				$(circleImages[i]).css('border','1px dashed #993301');
				$(circleImages[i]).css('background-size','200px 200px');
			}
				// set left-right margin
				var parent = $(circleImages[i]).parent();
				var childCount = parent.children().length;
				var margin = parseInt((contentWidth - imageCountPerRows *140) /imageCountPerRows/2);
				$(circleImages[i]).css("margin-left",margin);
				$(circleImages[i]).css("margin-right",margin);
		}
	};
	
	return {
		init:init
	}
}
