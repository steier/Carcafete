initialize-release
initialize

	super initialize.
	
	self cards: OrderedCollection new.
 	self readCardsFromFile.
	self cards shuffle