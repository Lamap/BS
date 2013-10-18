BSEvents = {
	DOCUMENT_READY: "DOCUMENT_READY",
	CHANGE_LANGUAGE: "CHANGE_LANGUAGE",
	SHOW_FIXED_MENU: "SHOW_FIXED_MENU",
	HIDE_FIXED_MENU: "HIDE_FIXED_MENU",
	ALL_CONTENTS_LOADED: "ALL_CONTENTS_LOADED",
	STRUCTURE_LOADED: "STRUCTURE_LOADED",
	NAVIGATOR_ERROR_WRONG_NAMESPACE: 'NAVIGATOR_ERROR_WRONG_NAMESPACE',
	JSON_PARSE_ERROR: "JSON_PARSE_ERROR",
	STRUCTURE_LOAD_ERROR: "STRUCTURE_LOAD_ERROR",
	OPEN_PICTURE: "OPEN_PICTURE",
	dispatchEvent:function(p_eventType,p_eventObject){
		var eventType = p_eventType;
		var eventObject = p_eventObject;
		
		ConfigModel.tracer.log("EVENT DISPATCHED:"+eventType);
		
		if(eventType.toLowerCase().indexOf('error') != -1)
			{
					ConfigModel.tracer.logError(eventType);
			}
		
		if(p_eventObject)
			ConfigModel.tracer.log(eventObject);
		
		$(document).trigger(eventType,[eventObject]);
	},
	subscribe:function(event_type,callBack){
		$(document).on(event_type,callBack);
	},
	unSubscribe:function(event_type,callBack){
		$(document).off(event_type,callBack);
	}
}
