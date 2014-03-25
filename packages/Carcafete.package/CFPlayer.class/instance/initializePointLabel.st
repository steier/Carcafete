accessing
initializePointLabel  

	self pointLabel: StringMorph new.
	self pointLabel
		interimContents: 'my points:  ', self points asString;
		emphasis: 1;
		center: self center