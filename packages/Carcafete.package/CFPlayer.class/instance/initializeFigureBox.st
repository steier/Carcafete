accessing
initializeFigureBox

	self figureBox: Morph new.
	self figureBox
		color: (Color black alpha: 0.5);
		extent: (self extent + (0@ -70));
		center: ((self center) + (0@30));
		beSticky