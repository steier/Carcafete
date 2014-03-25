control
initializeField
	
	|field|
	  
	field := PasteUpMorph new.
	field 
		beSticky;
		extent: (self topLeft + (self bottomRight + (-210@ 0)));
		color: ((Color r: 0.439 g: 0.439 b: 0.443) adjustBrightness: 1.0).
		
	^field