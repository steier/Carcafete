as yet unclassified
oppositeDirection: direction

	(direction == #north ) ifTrue: [^#south]. 
	(direction == #east ) ifTrue: [^#west].
	(direction == #south ) ifTrue: [^#north].
	(direction == #west ) ifTrue: [^#east]. 
	
	(direction == #northeast ) ifTrue: [^#southeast]. 
	(direction == #northwest ) ifTrue: [^#southwest]. 
	(direction == #eastnorth ) ifTrue: [^#westnorth]. 
	(direction == #eastsouth ) ifTrue: [^#westsouth]. 
	(direction == #westnorth ) ifTrue: [^#eastnorth]. 
	(direction == #westsouth ) ifTrue: [^#eastsouth]. 
	(direction == #southwest ) ifTrue: [^#northwest]. 
	(direction == #southeast ) ifTrue: [^#northeast]. 
	
	(direction == #northeastCloister ) ifTrue: [^#southeastCloister]. 
	(direction == #northwestCloister ) ifTrue: [^#southwestCloister]. 
	(direction == #eastnorthCloister ) ifTrue: [^#westnorthCloister]. 
	(direction == #eastsouthCloister ) ifTrue: [^#westsouthCloister]. 
	(direction == #westnorthCloister ) ifTrue: [^#eastnorthCloister]. 
	(direction == #westsouthCloister ) ifTrue: [^#eastsouthCloister]. 
	(direction == #southwestCloister ) ifTrue: [^#northwestCloister]. 
	(direction == #southeastCloister ) ifTrue: [^#northeastCloister]. 
	
	self halt
	"TODO: Error"