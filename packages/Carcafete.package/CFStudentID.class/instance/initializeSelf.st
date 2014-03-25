event handling
initializeSelf   

	self
		extent: (290@200);	
		cornerStyle: #rounded;  
		color: (Color black alpha: 0.7);
		target:  self;
		activate: false;  
		on: #mouseDown send: #clickedOnStudentCard to: self.