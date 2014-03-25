event handling
showWinners: aPlayer at: xPosition and: yPosition

	|studentID|

	studentID := aPlayer studentID.
	studentID contract.	
	
	self buttonLayer addMorph: (studentID center: (self center + (xPosition@yPosition)))