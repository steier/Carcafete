modifying
notifyNeighbours

	| tmp |

	CFPositionUtil fourDirections do: [:each|
		tmp := (self neighbourAt: each).
		tmp ifNotNil: [ tmp setNeighbour: self at: (CFPositionUtil oppositeDirection: each)]]