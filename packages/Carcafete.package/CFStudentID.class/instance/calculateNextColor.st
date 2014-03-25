event handling
calculateNextColor

	|newColor lastColor|
	
	lastColor := self lastColor.
	newColor :=  self colorSet atRandom.
	
	self lastColor: newColor.
	self colorSet remove: newColor.  
	
	(lastColor isNil) ifFalse: 
		[self colorSet add: lastColor].
  
	self baseColor: newColor.  
	self color: (newColor alpha: 0.7)
