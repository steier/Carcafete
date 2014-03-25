initialize-release
initializeWith: aGame

	super initializeWith: aGame.
	
	self cardObjects: OrderedCollection new.
	self isPlaced: false