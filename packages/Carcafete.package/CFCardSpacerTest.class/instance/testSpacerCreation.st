tests
testSpacerCreation
	| startCard north1Card east1Card east2Card north1east1Card |
	startCard := CFCard new.
	north1Card := CFCard new.
	east1Card := CFCard new.
	east2Card := CFCard new.
	
	startCard surroundWithSpacers.
	
	north1Card takePositionOf: (startCard neighbourAt: #north).
	east1Card takePositionOf: (startCard neighbourAt: #east).  

	self should: [(east1Card neighbourAt: #north) == (north1Card neighbourAt: #east)].
	self should: [(east1Card neighbourAt: #north) class == CFCardSlot ].
	
	north1east1Card := (east1Card neighbourAt: #north).
	
	east2Card takePositionOf: (east1Card neighbourAt: #east).  
	
	self should: [(east2Card neighbourAt: #north) == (north1east1Card neighbourAt: #east)].