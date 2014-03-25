as yet unclassified
threeDraw: firstdir with: seconddir and: thirddir on: object
	
	((self directions at:1 == firstdir asSymbol)
	&(self directions at:2 == seconddir asSymbol)
	& (self directions at:3 == thirddir asSymbol)) ifTrue:
		[self drawCertainObject:
			(object, '_', firstdir, '_', seconddir, '_', thirddir asString, '.png') asString]