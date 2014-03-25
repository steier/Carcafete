as yet unclassified
addBlackShadow

	|tmpBlackShadow|

	tmpBlackShadow  := CFStudentID new.		
	
	self addMorph: tmpBlackShadow.
	
	tmpBlackShadow 
		extent: (290@200);	
		cornerStyle: #rounded;
		color: (Color black alpha: 0.8);
		target:  self;
		center: (self center);
		on: #mouseDown send: #setActivate to: self;
		on: #mouseUp send: #delete to: tmpBlackShadow