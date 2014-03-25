as yet unclassified
twoDraw: firstdir with: seconddir on: object
	
	(self directions at:1 == firstdir asSymbol)
	&(self directions at:2 == seconddir asSymbol) ifTrue:
		[self drawCertainObject:
			(object, '_', firstdir, '_', seconddir asString, '.png') asString]