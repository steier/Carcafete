modifying
draw

	|form|

	form:= CFMorphicUtil flyweightLoadForm: 'CFMeadow.png'.
	
	self addMorph: (SketchMorph withForm: form);
		extent: (191@191);
		position: (self game topRight + (-200@ 9));
		comeToFront.
	
	self cardObjects do: [:each| each draw].
	self game addMorph: self