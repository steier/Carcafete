modifying
rotateBy: anAngle

 	| transformMorph |

	self changed.
	
	transformMorph := self createTransformMorphWith: anAngle.
	transform := transformMorph asMorphicTransform.
	
	self layoutChanged