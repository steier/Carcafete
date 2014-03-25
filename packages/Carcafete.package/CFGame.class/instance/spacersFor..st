initialize-release
spacersFor: card

	|fittingSlots|

	fittingSlots := OrderedCollection new.
	
	self slots do: [:slot| 
		slot hide.
		slot color: (Color blue). 
		(card couldTakePositionOfWithRotation: slot) ifTrue:
			[slot show.
			fittingSlots add: slot]].
	
	^fittingSlots