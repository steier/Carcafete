as yet unclassified
cardOffset: direction

	(direction == #north ) ifTrue: [^(0@(-191))]. 
	(direction == #east ) ifTrue: [^((191)@(0))].
	(direction == #south ) ifTrue: [^((0)@(191))].
	(direction == #west ) ifTrue: [^((-191)@(0))].
	
	self halt
		"Error"