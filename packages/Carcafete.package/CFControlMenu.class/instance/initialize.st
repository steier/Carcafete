initialization
initialize 

	super initialize.
	
	self
		sketch: SketchMorph new;
		color: (Color black alpha: 0);
		initializeButtonLayer;
		addMorph: self sketch;
		addMorph: self buttonLayer;
		createMenu