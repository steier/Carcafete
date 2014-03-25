accessing
getPartValue
	
	|value|
	
	value := super getPartValue.
	self hasEmblem ifTrue: [value := value + 1].
	
	^value