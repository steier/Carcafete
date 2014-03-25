tests
testDoesFitWithRotation
	| card1 card2 |
	card1 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.
	card2 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.
	
	card1 surroundWithSpacers.
		
	card2 rotateLeft.
	self should: [card2 couldTakePositionOfWithRotation: (card1 neighbourAt: #east).].  
	