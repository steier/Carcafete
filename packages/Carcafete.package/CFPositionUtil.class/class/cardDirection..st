as yet unclassified
cardDirection: direction

	(direction == #northeast ) ifTrue: [^#north]. 
	(direction == #northwest ) ifTrue: [^#north]. 
	(direction == #eastnorth ) ifTrue: [^#east]. 
	(direction == #eastsouth ) ifTrue: [^#east]. 
	(direction == #westnorth ) ifTrue: [^#west]. 
	(direction == #westsouth ) ifTrue: [^#west]. 
	(direction == #southwest ) ifTrue: [^#south]. 
	(direction == #southeast ) ifTrue: [^#south].
	
	(direction == #northeastCloister ) ifTrue: [^#north]. 
	(direction == #northwestCloister ) ifTrue: [^#north]. 
	(direction == #eastnorthCloister ) ifTrue: [^#east]. 
	(direction == #eastsouthCloister ) ifTrue: [^#east]. 
	(direction == #westnorthCloister ) ifTrue: [^#west]. 
	(direction == #westsouthCloister ) ifTrue: [^#west]. 
	(direction == #southwestCloister ) ifTrue: [^#south]. 
	(direction == #southeastCloister ) ifTrue: [^#south].  
	
	^direction