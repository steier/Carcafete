modifying
rotateLeft

	| rotateProp topLeft |

	self isPlaced ifTrue: [^nil].  
	self rotateLogicLeft.
	topLeft := self topLeft.
	
 	rotateProp := AnimPropertyAnimation on: self 
 	         property: #rotateBy 
 	         start: (self rotationDegrees)   
 	         end: (self rotationDegrees - 90) 
 	         duration: 300. 
	
 	rotateProp register.
 	rotateProp start: #deleteWhenFinished