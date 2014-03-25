creation
createButtonAt: aPoint extent: aExtPoint action: aSymbol
	
	| tmpButton |
	
	tmpButton := SimpleButtonMorph new.
	tmpButton 
		label: '';  
		extent: aExtPoint;	
		color: (Color black alpha: 0);
		borderColor: (Color black alpha: 0);  
		target:  self;
		on: #mouseDown send: aSymbol to: self;
		center: (self center + (aPoint)).
	self buttonLayer addMorph: tmpButton.
		
	^ tmpButton
	
