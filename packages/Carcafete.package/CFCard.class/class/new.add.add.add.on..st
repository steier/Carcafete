as yet unclassified
new: castles add: paths add: cloisters add: meadows on: aGame

	| card cloister |
	
	card := CFCard basicNew.
	card initializeWith: aGame.
	
	castles do: [:each| card addObject: (CFCastle new: each)].
	paths do: [:each| card addObject: (CFPath new: each)].
	meadows do: [ :each | card addObject: (CFMeadow new: each)].
	cloisters do: [:each| 
		cloister := CFCloister new: each.
		card addObject: cloister ].
	
	(self cloisterNotifiers) do: [:each|
		card addObject: (CFCloisterNotifier new: each with: cloister)].
	
	^ card
	

