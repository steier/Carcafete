tests
testObjects
	| cfCard pathObject |
	cfCard := CFCard new.
	
	pathObject := CFPath new.
	pathObject 
		addConnectorAt: #north;
		addConnectorAt: #south.
		  
	cfCard addObject: pathObject. 
	
	self 
		should:	[(cfCard objectAt: #north) = pathObject ];
		should:	[(cfCard objectAt: #east) = nil];
		should:	[(cfCard objectAt: #south) = pathObject ];
		should:	[(cfCard objectAt: #west) = nil];
		should:	[(cfCard objectAt: #center) = nil];
		should:	[(cfCard neighbourAt: #north) = nil];
		should:	[(cfCard neighbourAt: #east) = nil];
		should:	[(cfCard neighbourAt: #south) = nil];
		should:	[(cfCard neighbourAt: #west) = nil];
		should:	[(cfCard neighbourAt: #center) = nil].