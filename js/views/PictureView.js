function PictureView(){
	var view;
	var images;
	var index;
	
	var img;
	var closeButton;
	var preButton;
	var nxtButton;
	
	function init(){
		BSEvents.subscribe(BSEvents.OPEN_PICTURE,open);
		view = $("#imageViewer");
		img = $("#imageViewer img");
		closeButton = $("#imageViewer .close");
		closeButton.click(close);
		
		preButton = $("#imageViewer .prev");
		nxtButton = $("#imageViewer .next");
		
		preButton.click(prePage);
		nxtButton.click(nxtPage);
		
		view.click(close);
	}
	
	function open(e,data){
		
		images = ConfigModel.getNodeById(data.id).IMAGES;
		index = data.index;
		
		
		loadImage();
		
		view.show();
	};
	function prePage(){
		
		if(index == 0)
			index = images.length - 1;
		else	
			index--;
		
		loadImage();
	}
	function nxtPage(){
		if(index == images.length - 1)
			index = 0;
		else	
			index++;
		
		loadImage();
	}
	function loadImage(){
		var src = "images/" + images[index].name;
		img.attr('src',src);
	}
	function close(e){
		
		if($(e.target).hasClass("navigation"))
			return;
		
		view.hide();
	}
	return{
		init:init
		}	
}
