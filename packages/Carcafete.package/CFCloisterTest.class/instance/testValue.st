tests
testValue
	| card east west northeast south cloister |
	card := CFCard new: {} with: {} with: {{#center}}  with: {}.
	card surroundWithSpacers.
	
	east := CFCard new: {} with: {} with: {}  with: {}.
	west := CFCard new: {} with: {} with: {}  with: {}.
	northeast  := CFCard new: {} with: {} with: {}  with: {}.
	south := CFCard new: {} with: {} with: {}  with: {}.
	
	cloister := (card connectorAt: #center) cardObject.  
	
	self should: [1 == cloister getValue].
	east takePositionOf: (card neighbourAt: #east  ). 
	self should: [2 == cloister getValue].
	west takePositionOf: (card neighbourAt: #west  ).
	self should: [3 == cloister getValue].
	south takePositionOf: (card neighbourAt: #south  ).
	self should: [4 == cloister getValue].
	northeast takePositionOf: (east neighbourAt: #north  ).
	self should: [5 == cloister getValue].