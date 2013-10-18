ConfigModel = {
//	settings
	debugMode: true,
	structure:null,
	actLanguage: "eng",
	actLanguageHistory: "eng",
	actPage: 'main',
	isIE9:false,
	useCanvas:true,
// instances
	navigatorManager:null,
	tracer: null,
	contentService: null,
	contentsView: null,
// data
	structureObjectTree:null,
	structureObject:null,
	mainPictures:null,
	mainMenu: [
	 {title: "Bulletin1"},
	 {title: "Entry"},
	 {title: "Startlist"},
	 {title: "Results"}
	],
	subMenu: [
	 {title: "The castle on maps"},
	 {title: "The castle of photos"},
	 {title: "How to get there"},
	 {title: "Links"}
	],
	navigatorModel:{
		nameSpace:{
			LANGUAGE: "lang",
			PAGE: "page"
		},
		pageIDs:{
			MAIN:"main",
			BULLETIN1: 'bulletin1',
			BULLETIN2: 'bulletin2',
			ENTRY: 'entry',
			STARTLIST: 'startlist',
			RESULTS: 'results',
			MAPS: 'maps',
			PICTURES: 'pictures',
			HOW2GET:'how2get',
			LINKS: 'links'
		},
		pageIDsFromFeed:[],
		langIDs:{
			ENG: "eng",
			HUN: "hun"
		}
	},
// utils
	fillPageIDs:function(){
		for(var i = 0; i < this.mainMenu.length; i++){
			var name = this.mainMenu[i].NAME_ENG.toLowerCase();
			name = name.replace(/ /g,'');
			this.navigatorModel.pageIDsFromFeed.push(name);
			this.mainMenu[i].idString = name; 
		}
		for(var i = 0; i < this.subMenu.length; i++){
			var name = this.subMenu[i].NAME_ENG.toLowerCase();
			name = name.replace(/ /g,'');
			this.navigatorModel.pageIDsFromFeed.push(name);
			this.subMenu[i].idString = name; 
		}
			
	},
	getNodeById:function(p_id){
		var result = null;
		var strCount = this.structureObject.length;
		for(var i = 0; i < strCount; i++){
			if(this.structureObject[i].id == p_id)
				result = this.structureObject[i];
		}
		return result;
	},
	decodeOU:function(p_inp){
	  p_inp = p_inp.replace(/#o#/g,'ő');
	  p_inp = p_inp.replace(/#oo#/g,'Ő');
	  p_inp = p_inp.replace(/#u#/g,'ű');
	  p_inp = p_inp.replace(/#uu#/g,'Ű');
	
	  return p_inp;	
	},
	encodeOU:function(p_inp){
	  p_inp = p_inp.replace(/ő/g,'#o#');
	  p_inp = p_inp.replace(/Ő/g,'#oo#');
	  p_inp = p_inp.replace(/ű/g,'#u#');
	  p_inp = p_inp.replace(/Ű/g,'#uu#');
	
	  return p_inp;	
	}		
}
