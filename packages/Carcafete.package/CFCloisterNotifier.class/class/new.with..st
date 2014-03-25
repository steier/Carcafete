as yet unclassified
new: positions with: realCloister	
	
	| cloisterNotifier |
	
	cloisterNotifier := CFCloisterNotifier basicNew.
	cloisterNotifier realCloister: realCloister.  
	cloisterNotifier initializeWith: positions.
	
	^cloisterNotifier