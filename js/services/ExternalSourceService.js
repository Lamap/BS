function ExternalSourceService(){
	
  var cssURLs;
  var jsURLs;
  var callBack;	
  var version = "noVersionSpecified";
	
  /// CSS	
  var cssCountDown;  
  function loadCSSs(){
    cssCountDown = cssURLs.length;
    for(var i = 0; i < cssURLs.length; i++){
      var css = document.createElement('link');
      css.type = 'text/css';
      css.src   = cssURLs[i] + '?v=' + version;
      css.rel   = 'stylesheet';
      css.media = 'screen';
      css.href  = cssURLs[i];
      
      css.onload = onCssLoaded;
      
      //document.head.appendChild(css);
      document.getElementsByTagName('head')[0].appendChild(css);
      }
  }
  function onCssLoaded(){
    cssCountDown--;
    
    if(cssCountDown == 0 && jsCountDown == 0)
       onFinished(); 
    
  }
  
  /// JS
  var jsCountDown;
  function loadJSs(){
    jsCountDown = jsURLs.length;
    for(var i = 0; i < jsURLs.length; i++){
      var script = document.createElement('script');
      script.type = 'text/javascript';
      script.src = jsURLs[i] + '?v=' + version;
      // script.onerror = onerror;
      script.onload = onScriptLoaded;
      //document.head.appendChild(script);
      document.getElementsByTagName('head')[0].appendChild(script);

     }
  }

  function onScriptLoaded(){

    jsCountDown--;
    if(cssCountDown == 0 && jsCountDown == 0)
      onFinished();
  }
  
  function onFinished(){
  	if(callBack)
  		callBack();
  	else
  		externalCallERROR();
  }
  function externalCallERROR(){
  	Tracer().logError("external call error");
  }
  function load(p_cssArray,p_jsArray,p_callBack,p_version){
  	if(p_cssArray,p_jsArray){
  		cssURLs = p_cssArray;
  		jsURLs = p_jsArray;
  		
  		callBack = p_callBack;
  		if(p_version)
  			version = p_version;
  		
  		loadCSSs();
  		loadJSs();
  	}
  	else{
  		externalCallERROR();
  	}
  	
  }
  
  return{
  	load:load
  }
 
}
