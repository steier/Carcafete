creation
createMenu

	self showMenuBackground.
	
	self 
		clearButtons;
		createButtonAt: (-15@(-65)) extent: (200@100) action: #newGameButtonClicked;
		createButtonAt: (0@(280)) extent: (200@130) action: #closeGameButtonClicked;
		createButtonAt: (-130@(100)) extent: (150@120) action: #optionsButtonClicked