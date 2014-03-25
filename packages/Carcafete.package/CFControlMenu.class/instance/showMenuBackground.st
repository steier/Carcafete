event handling
showMenuBackground

	self 
		sketch
		newForm: (CFMorphicUtil flyweightLoadForm: 'Startmenuklein.png');
		extent: 730@730; 
		beSticky.
		
	self extent: (730@730).
	self buttonLayer extent: 730@730