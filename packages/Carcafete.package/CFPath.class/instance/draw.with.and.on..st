as yet unclassified
draw: firstdir with: seconddir and: thirddir on: object
	
	(self directions size ==3) ifTrue:
		[self threeDraw: firstdir with: seconddir and: thirddir on: object].

	(self directions size =2) ifTrue:
		[self twoDraw: firstdir with: seconddir on: object].

	(self directions size ==1) ifTrue:
		[self oneDraw: firstdir on: object]
 