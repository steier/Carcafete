as yet unclassified
createButton: aString at: aPoint extent: aExtPoint target: aTarget action: aSymbol

	| tmpButton |

	tmpButton:= SimpleButtonMorph new.
	tmpButton 
		label: aString;
		extent: aExtPoint;	
		cornerStyle: #rounded;  
		color: (Color red alpha: 0.7);
		target:  aTarget;
		actionSelector: aSymbol;
		position: aPoint.
	tmpButton on: #mouseUp send: #abandon to: tmpButton.

	^ tmpButton
	
