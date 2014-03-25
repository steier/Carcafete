accessing
buildItTogetherWith: aField and: aButton

	self addMorph: aButton.  
	self addMorph: aField.
	aField addMorph: self cardArea.
	self cardArea addMorph: self startCard