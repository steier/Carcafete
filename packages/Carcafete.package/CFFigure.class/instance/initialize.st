initialize-release
initialize 

	| fileName morph color |

	super initialize.
		
	color := self player studentID baseColor.
	fileName := 'CFPlayer_', color asString, '.png'.
	morph:= SketchMorph withForm: (CFMorphicUtil flyweightLoadForm: fileName).
	morph comeToFront.
	
	self addMorphCentered: morph