function CircleImage(p_view,p_image){
	var view;
	var width;
	var height;
	
	var imageSrc;
	var image;
	
	var ctx;
	var rad;
	var lineWidth = 2;
	var lineColor = '#993301';
	
	//
	if(!p_view)
		return;
	if(!p_image)
		return;	
	view = p_view;
	
	
	function init(){
		width = view.width();
		height = view.height();
		rad = parseInt(width/2 - 4);
		
		if(window.G_vmlCanvasManager)
			G_vmlCanvasManager.initElement(view[0]);
		
		ctx = view[0].getContext('2d');
	
			
		imageSrc = p_image;
		image = new Image();
		image.onload = draw;
		image.src = imageSrc;
	}
	
	function draw(){
		
		
		var w = image.width;
		var h = image.height;
		var rate = w/h;
		var dw;
		var dh;
		
		if(h > w){
			dw = width;
			dh = height / rate;
		}
		else if(h < w){
			dh = height;
			dw = width * rate;
		}
		else{
			dw = image.width;
			dh = image.height;
		}
		
		ctx.save();
		
		ctx.beginPath();
		ctx.arc(width/2, height/2, rad, 0, Math.PI * 2, false);
		ctx.clip();
		ctx.closePath();
		ctx.drawImage(image,0,0,dw,dh);
		
		ctx.restore();
		
		ctx.beginPath();
		if(ctx.setLineDash)
			ctx.setLineDash([10,5]);
		
		ctx.strokeStyle = lineColor;
		ctx.lineWidth = lineWidth; 	
    	ctx.arc(width/2, height/2, rad, 0, Math.PI * 2, false);
    	ctx.closePath();
		ctx.stroke();		
	}
	
	
	init();
	
	return{
		init: init
	}
}
