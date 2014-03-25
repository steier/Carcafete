tests
testCreate
	| game studcard |
	CFGame reset.
	game := CFGame get.
	game openInWorld.
	
	studcard := CFStudentID new.
	studcard color: Color red.
	

	(CFGame get) players addLast: (CFPlayer new: (studcard) and: (0@0)).
	
	game nextTurn.