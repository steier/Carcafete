accessing
initializeShadow

	self shadow: Morph new.
	self shadow
		extent: self extent;
		color: (Color black alpha: 0.7);
		center: self center;
		beSticky;
		comeToFront