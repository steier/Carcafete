modifying
doesFitHere

	| oponentCard connectedWithField |

	connectedWithField  := false.
	
	CFPositionUtil twelveDirections do: [:direction| 
		oponentCard := self oponentCard: direction.
		oponentCard ifNotNil:
			[oponentCard ifNotSpacer:
				[connectedWithField := true.
				(self doesFitAt: direction with: oponentCard) ifFalse: [^false]]]].
	
	^connectedWithField