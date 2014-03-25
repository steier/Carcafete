modifying
showFigureSlots

	self cardObjects do: [:each| each showFigureSlotWith: self game].
	
	self owner addMorph:
		((CFMorphicUtil createButton: 'OK'
		at: self okButtonPosition
		extent: (30@30)
		target: self game currentPlayer
		action: #onConfirmedFigureSlot)
		beSticky)