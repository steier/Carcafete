tests
testRotate
	| cfCard pathObject |
	cfCard := CFCard new: {} with: {{#north. #east}} with: {} with: {}.  
	
	pathObject := (cfCard connectorAt: #north) cardObject.  	
	
	self 
		should:	[(cfCard objectAt: #north) = pathObject  ];
		should:	[(cfCard objectAt: #east) = pathObject ];
		should:	[(cfCard objectAt: #south) = nil  ];
		should:	[(cfCard objectAt: #west) = nil ];
		should:	[(cfCard objectAt: #center) = nil];
		should:	[(cfCard neighbourAt: #north) = nil];
		should:	[(cfCard neighbourAt: #east) = nil];
		should:	[(cfCard neighbourAt: #south) = nil];
		should:	[(cfCard neighbourAt: #west) = nil];
		should:	[(cfCard neighbourAt: #center) = nil].
	
	cfCard rotateLeft.
	
	self 
		should:	[(cfCard objectAt: #north) = pathObject ];
		should:	[(cfCard objectAt: #east) = nil ];
		should:	[(cfCard objectAt: #south) = nil ];
		should:	[(cfCard objectAt: #west) = pathObject ];
		should:	[(cfCard objectAt: #center) = nil];
		should:	[(cfCard neighbourAt: #north) = nil];
		should:	[(cfCard neighbourAt: #east) = nil];
		should:	[(cfCard neighbourAt: #south) = nil];
		should:	[(cfCard neighbourAt: #west) = nil];
		should:	[(cfCard neighbourAt: #center) = nil].
		
	
	cfCard rotateRight.
	
	self 
		should:	[(cfCard objectAt: #north) = pathObject  ];
		should:	[(cfCard objectAt: #east) = pathObject ];
		should:	[(cfCard objectAt: #south) = nil  ];
		should:	[(cfCard objectAt: #west) = nil ];
		should:	[(cfCard objectAt: #center) = nil];
		should:	[(cfCard neighbourAt: #north) = nil];
		should:	[(cfCard neighbourAt: #east) = nil];
		should:	[(cfCard neighbourAt: #south) = nil];
		should:	[(cfCard neighbourAt: #west) = nil];
		should:	[(cfCard neighbourAt: #center) = nil].