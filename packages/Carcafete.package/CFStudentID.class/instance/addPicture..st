accessing
addPicture: aPicture

	|pictureMorph|
	
	pictureMorph := SketchMorph new.
	pictureMorph
		newForm: (CFMorphicUtil flyweightLoadForm: aPicture);
		extent: 220@120.
		
	self picture: pictureMorph