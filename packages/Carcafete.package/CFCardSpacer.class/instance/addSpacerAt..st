modifying
addSpacerAt: direction

	| left right mine next |

	left := CFPositionUtil getLeftOf: direction.
	right := CFPositionUtil getRightOf: direction.
	
	(self neighbourAt: direction)
		ifNil: [mine := self addSpacerAt: direction with: right with: nil with: left.
			  next := self neighbourAt: right.
			  next ifNotNil: [next addSpacerAt: direction with: left with: mine with: right]]