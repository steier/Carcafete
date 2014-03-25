control
initializeButton
	
	|endGameButton|
	  
	endGameButton := SimpleButtonMorph new.
	endGameButton 
		label: 'end Game';
		extent: 170@30; position: ((self bottomRight) + (-190@ -50));
		color: (Color red alpha: 0.7); borderColor: Color black; 
		cornerStyle: #rounded;   
		target: self;
		actionSelector: #endGame.
		
	^endGameButton