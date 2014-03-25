modifying
forAllConnected: aBlock

	"executes the block for all connected objects, returns true if all connectors are connected (that could mean: the castle is finished.)"
	
	| visited toBeVisited current object isFinished |
	
	isFinished := true.
	visited := Set new.
	
	toBeVisited  := OrderedCollection new.
	toBeVisited  add: self.
	
	[toBeVisited isEmpty ] whileFalse:
		[current := toBeVisited removeFirst.
		visited add: current.
		aBlock value: current.
		current connectors do: [:connector| 
				object := connector counterpart.
				object ifNil:
					[isFinished := false]
				ifNotNil:
					[object := connector counterpart cardObject.
					((visited includes: object) | (toBeVisited includes: object )) ifFalse:
						[toBeVisited add: object ]]]].
		
	^isFinished