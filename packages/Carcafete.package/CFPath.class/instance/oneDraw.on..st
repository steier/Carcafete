as yet unclassified
oneDraw: firstdir on: object

	(self directions at:1 == #north) ifTrue:
		[self drawCertainObject: (object, '_', firstdir asString, '.png') asString]