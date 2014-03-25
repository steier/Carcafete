modifying
showFigure: aCFFigure

	|figure|

	figure := aCFFigure.
	figure
		position: self figurePosition;
		rotateBy: (0-(self card rotationDegrees));
		comeToFront.
	
	self card addMorph: figure