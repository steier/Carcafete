control
initiatizeStartCard

	self startCard
		draw;
		center: self cardArea center;
		surroundWithSpacers;
		beSticky;
		setPlaced;
		comeToFront