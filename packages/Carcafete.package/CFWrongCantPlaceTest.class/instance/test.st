as yet unclassified
test
	|  studentCard player slotWidget start first second|
	CFGame reset.
	CFGame get openInWorld.
	studentCard := CFStudentID new.
	studentCard baseColor: (Color red). 
	player := CFPlayer new: studentCard and: (0@0).
	"TODO replace CFStudentID with constructor"  
	CFGame get players addLast: player.
	
	CFGame get startGame.
	start := CFGame get startCard.
	
	self should: [((((start neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) = start ].
	self should: [((((start neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) = start ].
	self should: [((((start neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) = start ].
	self should: [((((start neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) = start ].
	
	player currentCard rotateRight.
	
	slotWidget := (CFGame get startCard neighbourAt: #east) submorphs first.
	slotWidget acceptDroppingMorph: (player currentCard) event: nil.
	slotWidget placeCard.
	player onConfirmedFigureSlot.
	
	first := start neighbourAt: #east.  
	
	self should: [((((start neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) = start ].
	self should: [((((start neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) = start ].
	self should: [((((start neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) = start ].
	self should: [((((start neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) = start ].
	
	self should: [((((first neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) = first ].
	self should: [((((first neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) = first ].
	self should: [((((first neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) = first ].
	self should: [((((first neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) = first ].
	
	player currentCard rotateLeft.
	
	slotWidget := (CFGame get startCard neighbourAt: #west) submorphs first.
	slotWidget acceptDroppingMorph: (player currentCard) event: nil.
	slotWidget placeCard.
	player onConfirmedFigureSlot.
	
	
	second := start neighbourAt: #west.  
	
	self should: [((((start neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) = start ].
	self should: [((((start neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) = start ].
	self should: [((((start neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) = start ].
	self should: [((((start neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) = start ].
	
	self should: [((((first neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) = first ].
	self should: [((((first neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) = first ].
	self should: [((((first neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) = first ].
	self should: [((((first neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) = first ].
	
	self should: [((second neighbourAt: #east) neighbourAt: #west) = second].
	self should: [((second neighbourAt: #south) neighbourAt: #north) = second].
	self should: [((((second neighbourAt: #east) neighbourAt: #south) neighbourAt: #north) neighbourAt: #west) = second].
	
	self should: [(start neighbourAt: #west) = second ].
	self should: [(second neighbourAt: #east) = start ].
	self should: [((start neighbourAt: #south) neighbourAt: #west) = (second neighbourAt: #south)].
	self should: [((second neighbourAt: #south) neighbourAt: #east) = (start neighbourAt: #south)].
	self should: [((((second neighbourAt: #south) neighbourAt: #east) neighbourAt: #west) neighbourAt: #north) = second].
	
	self should: [((((second neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) = second ].
	self should: [((((second neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) = second ].
	self should: [((((second neighbourAt: #west) neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) = second ].
	self should: [((((second neighbourAt: #north) neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) = second ].
	
	self should: [start == ((((start neighbourAt: #west) neighbourAt: #south) neighbourAt: #east) neighbourAt: #north)].
	
	self should: [player currentCard couldTakePositionOfWithRotation: ((start neighbourAt: #west) neighbourAt: #south)].