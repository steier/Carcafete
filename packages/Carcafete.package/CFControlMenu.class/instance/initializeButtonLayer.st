initialization
initializeButtonLayer
 
	self buttonLayer: PasteUpMorph new.
	
 	self buttonLayer  
 		color: (Color black alpha: 0);
		borderColor: (Color black alpha: 0);  
  		topLeft: self topLeft;
  		comeToFront;
  		beSticky
	