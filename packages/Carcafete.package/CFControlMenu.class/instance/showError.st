as yet unclassified
showError

	|systemWindow label|
	
	systemWindow := PluggableSystemWindow new.		
	systemWindow
		center: self center;
		extent: 250@100;
		label: 'Carcafête'.
		
	label := StringMorph new. 		
	label 
		center: (systemWindow center + (-40@20));
		interimContents: 'Please choose a player'.
	
	systemWindow addMorph: label.   	
	self addMorph: systemWindow