as yet unclassified
wantsDroppedMorph: aMorph event: anEvent

	(aMorph class = CFCard) ifTrue: [^ self doesCardFitInSlot: aMorph] ifFalse: [^false]  