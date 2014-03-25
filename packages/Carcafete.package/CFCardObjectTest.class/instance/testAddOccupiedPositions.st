tests
testAddOccupiedPositions
	| cfCardObject |
	cfCardObject := CFCardObject new.
	
	cfCardObject addConnectorAt: #north.  
	self should: [cfCardObject connectors size == 1];
	should:	[cfCardObject isOccupying: #north ];
	shouldnt:	[cfCardObject isOccupying: #east ];
	shouldnt:	[cfCardObject isOccupying: #south ];
	shouldnt:	[cfCardObject isOccupying: #west ];
	shouldnt:	[cfCardObject isOccupying: #center ].
	
	cfCardObject addConnectorAt: #center.  
	self should: [cfCardObject connectors size == 2];
	should:	[cfCardObject isOccupying: #north ];
	shouldnt:	[cfCardObject isOccupying: #east ];
	shouldnt:	[cfCardObject isOccupying: #south ];
	shouldnt:	[cfCardObject isOccupying: #west ];
	should:	[cfCardObject isOccupying: #center ].