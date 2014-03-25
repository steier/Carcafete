accessing
initializeSelf  

	self
		color: self studentID baseColor;
		extent: 170@100; 
		engagedFigures: OrderedCollection new;
		vacantFigures: OrderedCollection new;
		points: 0;
		beSticky;
		addMorph: (self studentID picture extent: 38@40)