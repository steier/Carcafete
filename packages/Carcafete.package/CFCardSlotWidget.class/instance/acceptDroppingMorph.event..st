as yet unclassified
acceptDroppingMorph: aMorph event: anEvent
	
	self doesCardFitInSlot: aMorph.  
	
	self addMorphCentered: aMorph.
	self cardSlot card: (aMorph).
	self cardSlot card removeLink: #rotateRight.
	
	self button: (CFMorphicUtil createButton:'OK'
						at: (self bottomRight + ((-30)@(-30)))
						extent: (30@30)
						target: self action: #placeCard).
	
	self addMorph: self button