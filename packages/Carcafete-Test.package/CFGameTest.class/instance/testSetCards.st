tests
testSetCards
	| game card1 card2 spacers |
	CFGame reset.
	game := CFGame get.
	
	card1 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.
	card2 := CFCard new: {} with: {{#west. #east}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth} . {#westsouth. #southwest. #southeast. #eastsouth}}.

	self should: [game slots size == 8].

	self shouldnt: [card1 couldTakePositionOfWithRotation: (game startCard neighbourAt: #north)].  
	self should: [card1 couldTakePositionOfWithRotation: (game startCard neighbourAt: #east)].
	self should: [card1 couldTakePositionOfWithRotation: (game startCard neighbourAt: #south)].
	self should: [card1 couldTakePositionOfWithRotation: (game startCard neighbourAt: #west)].

	spacers := game spacersFor: card1.
	
	self should: [spacers size == 3].
	self should: [spacers includes: (game startCard neighbourAt: #east)].
	self should: [spacers includes: (game startCard neighbourAt: #west)].
	self should: [spacers includes: (game startCard neighbourAt: #south)].
	
	card1 takePositionOf: (game startCard neighbourAt: #west).  
	
	spacers := game spacersFor: card2.  
	
	self should: [spacers size == 5].
	self should: [spacers includes: (card1 neighbourAt: #north)].
	self should: [spacers includes: (card1 neighbourAt: #west)].
	self should: [spacers includes: (card1 neighbourAt: #south)].
	self should: [spacers includes: (game startCard neighbourAt: #east)].
	self should: [spacers includes: (game startCard neighbourAt: #south)].