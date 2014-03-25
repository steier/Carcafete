as yet unclassified
testNorth
	| offset |
	offset := (CFPositionUtil figureOffset: #north).
	self should: [ 88@5 =  offset ].