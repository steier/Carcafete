as yet unclassified
getRightOf: direction

	^self getLeftOf: (self getLeftOf: (self getLeftOf: direction))