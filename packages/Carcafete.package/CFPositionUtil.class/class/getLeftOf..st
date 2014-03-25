as yet unclassified
getLeftOf: direction

	(direction == #center ) ifTrue: [^#center]. 
	(direction == #north ) ifTrue: [^#west]. 
	(direction == #east ) ifTrue: [^#north].
	(direction == #south ) ifTrue: [^#east].
	(direction == #west ) ifTrue: [^#south]. 
	
	(direction == #northeast ) ifTrue: [^#westnorth]. 
	(direction == #northwest ) ifTrue: [^#westsouth]. 
	(direction == #eastnorth ) ifTrue: [^#northwest]. 
	(direction == #eastsouth ) ifTrue: [^#northeast]. 
	(direction == #westnorth ) ifTrue: [^#southwest]. 
	(direction == #westsouth ) ifTrue: [^#southeast]. 
	(direction == #southwest ) ifTrue: [^#eastsouth]. 
	(direction == #southeast ) ifTrue: [^#eastnorth]. 
	
	(direction == #northeastCloister ) ifTrue: [^#westnorthCloister]. 
	(direction == #northwestCloister ) ifTrue: [^#westsouthCloister]. 
	(direction == #eastnorthCloister ) ifTrue: [^#northwestCloister]. 
	(direction == #eastsouthCloister ) ifTrue: [^#northeastCloister]. 
	(direction == #westnorthCloister ) ifTrue: [^#southwestCloister]. 
	(direction == #westsouthCloister ) ifTrue: [^#southeastCloister]. 
	(direction == #southwestCloister ) ifTrue: [^#eastsouthCloister]. 
	(direction == #southeastCloister ) ifTrue: [^#eastnorthCloister].
	
	self halt
	 "Error"