creation
createStudentIDMenue

	self showStudentIDMenuBackground.
	
	self
		clearButtons;
		createButtonAt: -40@ -260 extent: 150@ 80 action: #startGameButtonClicked;
		createButtonAt: -340@ 310 extent: 200@ 70 action: #createMenu;
		createButtonAt: -60@ 255 extent: 70@ 75 action: #closeGameButtonClicked;
		students: OrderedCollection new.
		
	self createStudentIDs