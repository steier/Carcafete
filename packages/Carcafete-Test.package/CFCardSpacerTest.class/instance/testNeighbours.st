tests
testNeighbours
	| cfCard northNeighbour eastNeighbour |
	cfCard := CFCard new.
	cfCard surroundWithSpacers.
	
	
	northNeighbour := CFCard new.
	eastNeighbour := CFCard new.
	
	self 
	should:	[(cfCard neighbourAt: #north) class == CFCardSlot ];
	should:	[(cfCard neighbourAt: #south) class == CFCardSlot  ];	
	should:	[(cfCard neighbourAt: #east) class == CFCardSlot  ];
	should:	[(cfCard neighbourAt: #west) class == CFCardSlot  ].
	
	northNeighbour takePositionOf: (cfCard neighbourAt: #north).
	eastNeighbour takePositionOf: (cfCard neighbourAt: #east  ).    
		
	self 
	should:	[(cfCard neighbourAt: #north) = northNeighbour ];
	should:	[(cfCard neighbourAt: #east) = eastNeighbour ];
	should:	[(cfCard neighbourAt: #south) class = CFCardSlot];
	should:	[(cfCard neighbourAt: #west) class = CFCardSlot];
	should:	[(cfCard neighbourAt: #center) = nil ].