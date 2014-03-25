as yet unclassified
figureOffset: direction

	(direction == #northeast ) ifTrue: [^((128@2))]. 
	(direction == #northwest ) ifTrue: [^((27@2))]. 
	(direction == #eastnorth ) ifTrue: [^((155@27))]. 
	(direction == #eastsouth ) ifTrue: [^( (155@123))].  
	(direction == #westnorth ) ifTrue: [^((2@27))]. 
	(direction == #westsouth ) ifTrue: [^((2@123))]. 
	(direction == #southwest ) ifTrue: [^((27@146))]. 
	(direction == #southeast ) ifTrue: [^((128@146))]. 
	(direction == #center ) ifTrue: [^((80@75))]. 
	(direction == #north ) ifTrue: [^((80@5))]. 
	(direction == #west) ifTrue: [^((5@75))]. 
	(direction == #east ) ifTrue: [^((155@75))]. 
	(direction == #south ) ifTrue: [^((80@146))]. 

	^direction