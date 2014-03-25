as yet unclassified
mouseLeaveDragging: anEvent

	self 
		color: (Color r: 0.825 g: 0.825 b: 0.825);
		borderColor: (Color r: 0.825 g: 0.825 b: 0.825).
		
	(self button == nil) ifFalse: [self button abandon]