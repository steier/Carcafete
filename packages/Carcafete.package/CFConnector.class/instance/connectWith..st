accessing
connectWith: connector

	(self cardObject class == connector cardObject class) ifFalse: 
		[self halt. "ERROR: Can't connect objects of different types."]. 
	
	self counterpart: connector