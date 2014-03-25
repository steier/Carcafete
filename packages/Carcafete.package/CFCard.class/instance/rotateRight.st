modifying
rotateRight

	| rotateProp |

	self isPlaced ifTrue: [^nil].
	3 timesRepeat: [self rotateLogicLeft].

 	rotateProp := AnimPropertyAnimation on: self 
 	         property: #rotateBy 
 	         start: (self rotationDegrees)   
 	         end: (self rotationDegrees + 90) 
 	         duration: 300. 
	
 	rotateProp register.
 	rotateProp start: #deleteWhenFinished