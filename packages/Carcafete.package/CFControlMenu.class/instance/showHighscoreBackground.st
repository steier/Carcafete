event handling
showHighscoreBackground

	self show.
	self sketch
			newForm: (CFMorphicUtil flyweightLoadForm: 'Highscore.png');	
			extent: 1024@730; 
			beSticky.
		
	self extent: 1004@710.
	self buttonLayer extent: 1004@710.
	
	self createButtonAt: 0@ -230 extent: 175@90 action: #newGameButtonClicked;
		createButtonAt: -25@ 330 extent: 90@75 action: #closeGameButtonClicked