tests
testCreate
	| cfCardObject |
	cfCardObject := CFCardObject new.
	self should: [cfCardObject connectors size == 0];
	shouldnt:	[cfCardObject isOccupying: #north ];
	shouldnt:	[cfCardObject isOccupying: #east ];
	shouldnt:	[cfCardObject isOccupying: #south ];
	shouldnt:	[cfCardObject isOccupying: #west ];
	shouldnt:	[cfCardObject isOccupying: #center ].