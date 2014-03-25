event handling
createStudentIDs

	|colorSet|
	
	colorSet := CFStudentID newColorSet.
	
	self	students 
			addLast: (CFStudentID new: 'sunny_c.png' with:  colorSet and: 'sunny_s.png');
			addLast: (CFStudentID new: 'money_c.png' with:  colorSet and: 'money_s.png');
			addLast: (CFStudentID new: 'diva_c.png' with:  colorSet and: 'diva_s.png');
			addLast: (CFStudentID new: 'chiller_c.png' with:  colorSet and: 'chiller_s.png').
	
	self buttonLayer addMorph: ((self students at: 1) center: (self center + (-210@ -110))).
	self buttonLayer addMorph: ((self students at: 2) center: (self center +   (145@ -110))).
	self buttonLayer addMorph: ((self students at: 3) center: (self center +   (-210@110))).
	self buttonLayer addMorph: ((self students at: 4) center: (self center +  (145@110)))