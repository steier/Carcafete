as yet unclassified
testSorter
	| tmp |
	tmp := CFPositionUtil sort: {#east. #west}.
	self should: [#west == (tmp at: 1)].
	self should: [#east == (tmp at: 2)].