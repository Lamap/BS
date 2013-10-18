Tracer = function(){
	var messages = "";
	var messageCount = 0;
	function log(p_message,p_origin){
		if(!ConfigModel.debugMode)
			return;
		
		messageCount++;
				
		var origin = '';
		if(p_origin)
			origin = p_origin;
			
		//var message = messageCount + '. ' + origin + ':::' + p_message;	
		var message = p_message;
		
		if(window.console && window.console.log){
			console.log(message);
		}

		
		messages += '\n' + message;
	}
	
	function logError(message){
		//if(!ConfigModel.debugMode) return;
		if(window.console && window.console.error){
			console.error(message);
		}	
	}
	
	return {
		log:log,
		logError:logError
		}
}
