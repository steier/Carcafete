as yet unclassified
addCardImage: aFile

	|tmpCard|
	
	tmpCard := SketchMorph new.
	tmpCard newForm: (CFMorphicUtil flyweightLoadForm: aFile).
			
	tmpCard
		extent: (240@150);	
		cornerStyle: #rounded;
		target:  self;
		center: (self center);
		on: #mouseDown send: #clickedOnStudentCard to: self.
	
	self addMorph: tmpCard