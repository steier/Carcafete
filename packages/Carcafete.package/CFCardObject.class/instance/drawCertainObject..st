accessing
drawCertainObject: filename

	|form|
	
	form := CFMorphicUtil flyweightLoadForm: filename.
	
	self card addMorph: (SketchMorph withForm: form).
	self card extent: (191@191)
	
	