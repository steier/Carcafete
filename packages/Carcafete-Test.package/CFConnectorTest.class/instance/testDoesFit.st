tests
testDoesFit
	| card1 card2 |
	card1 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.
	card2 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.
	
	card1 surroundWithSpacers.
		
	card2 rotateLeft.
	self shouldnt: [card2 couldTakePositionOf: (card1 neighbourAt: #east).].  
	
	card2 rotateLeft.
	self should: [card2 couldTakePositionOf: (card1 neighbourAt: #east).].
	
	card2 rotateLeft.
	self shouldnt: [card2 couldTakePositionOf: (card1 neighbourAt: #east).].  
	
	card2 rotateLeft.
	self should: [card2 couldTakePositionOf: (card1 neighbourAt: #east).].