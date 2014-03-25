tests
testConnectConnectors
	| card1 card2 con1 con2 |
	card1 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.
	card2 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.
	
	card1 surroundWithSpacers.
	card2 takePositionOf: (card1 neighbourAt: #east).
	
	self should: [card2 == (card1 neighbourAt: #east)].
	
	con1 := card1 connectorAt: #east.  
	con2 := card2 connectorAt: #west.  
	
	self
		should: [(con1 counterpart) == con2];
		should: [(con2 counterpart) == con1].
		
	con1 := card1 connectorAt: #eastnorth.  
	con2 := card2 connectorAt: #westnorth.  
	self
		should: [(con1 counterpart) == con2];
		should: [(con2 counterpart) == con1].
		
	con1 := card1 connectorAt: #eastsouth.  
	con2 := card2 connectorAt: #westsouth.  
	self
		should: [(con1 counterpart) == con2];
		should: [(con2 counterpart) == con1].