modifying
addSpacerAt: direction with: comingFrom with: comingFromNeighbour with: goingTo

	| newSpacer next |

	newSpacer := CFCardSlot new: self game.
	comingFromNeighbour ifNotNil:
				[CFCardSpacer connect: newSpacer
				at: comingFrom
				with: comingFromNeighbour
				at: goingTo ].
			
	self placeNewSpacer: newSpacer at: direction.
	
	next := self neighbourAt: goingTo.
	next ifNotNil: 
			[next addSpacerAt: direction with: comingFrom with: newSpacer with: goingTo].

	^ newSpacer