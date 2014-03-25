accessing
createTransformMorphWith: anAngle  

 	|transformMorph originalCenter relativeCenter|
	
	relativeCenter := self transformFromWorld globalPointToLocal: self center.
	originalCenter := self center negated.
	
	transformMorph := MorphicTransform new withOffset: originalCenter.
	transformMorph := transformMorph composedWith:
		(MorphicTransform new withAngle: anAngle degreesToRadians negated).
	transformMorph := transformMorph composedWith:
		(MorphicTransform new withOffset: relativeCenter).
	
	^transformMorph