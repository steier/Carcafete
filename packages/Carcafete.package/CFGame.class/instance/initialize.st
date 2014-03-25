initialize-release
initialize 

	|endGameButton field|

	super initialize.

	self initializeSelf;
		initializeCardArea.
		
	endGameButton := self initializeButton.
	field := self initializeField.
	
	self buildItTogetherWith: field and: endGameButton