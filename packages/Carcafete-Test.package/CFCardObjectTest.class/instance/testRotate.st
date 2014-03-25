tests
testRotate
	| cfCardObject |
	cfCardObject := CFCardObject new.
	cfCardObject addConnectorAt: #north. 
	cfCardObject addConnectorAt: #center.
	
	cfCardObject rotateLeft.
	
	self should: [cfCardObject connectors size == 2];
	shouldnt:	[cfCardObject isOccupying: #north ];
	shouldnt:	[cfCardObject isOccupying: #east ];
	shouldnt:	[cfCardObject isOccupying: #south ];
	should:	[cfCardObject isOccupying: #west ];
	should:	[cfCardObject isOccupying: #center ].
	