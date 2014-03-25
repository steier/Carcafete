creation
initializeWith: aFile and: aPicture
	
	super initialize.  
	self addPicture: aPicture.
	self initializeSelf.
	self addCardImage: aFile.
	self addBlackShadow