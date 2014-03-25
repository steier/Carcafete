as yet unclassified
test
	| start north northeast south southeast east studentCard player slotWidget |
	north := CFCard new: {{#south}} with: {} with: {} with: {{#eastsouth. #eastnorth. #northeast. #northwest. #westnorth. #westsouth}}.
	south := CFCard new:{} with:{} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth. #eastsouth. #westsouth. #southeast. #southwest}}.
	southeast := CFCard new: {} with: {{#north. #south}} with: {} with: {{#northeast. #eastnorth. #eastsouth. #southeast}. {#westnorth. #westsouth. #northwest. #southwest}}.
	northeast := CFCard new: {} with: {{#north. #south}} with: {} with: {{#northeast. #eastnorth. #eastsouth. #southeast}. {#westnorth. #westsouth. #northwest. #southwest}}.
	east := CFCard new: {} with: {{#north. #south}} with: {} with: {{#northeast. #eastnorth. #eastsouth. #southeast}. {#westnorth. #westsouth. #northwest. #southwest}}.
	CFGame reset.
	CFGame get openInWorld.
	studentCard := CFStudentID new.
	studentCard baseColor: (Color red). 
	player := CFPlayer new: studentCard and: (0@0).
	"TODO replace CFStudentID with constructor"  
	CFGame get players addLast: player.
	
	CFGame get cardStack cards: {north. south. southeast. northeast. east. CFCard new: {} with: {} with: {{#center}} with: {{#northeast. #eastnorth. #eastsouth. #southeast. #westnorth. #westsouth. #northwest. #southwest}}.} asOrderedCollection.
	CFGame get startGame.
	
	start := CFGame get startCard.
	self should: [((start neighbourAt: #south) neighbourAt: #north) == start].
	self should: [((start neighbourAt: #east) neighbourAt: #west) == start].
	self should: [((start neighbourAt: #north) neighbourAt: #south) == start].
	self should: [((start neighbourAt: #west) neighbourAt: #east) == start].
	
	self should: [((((start neighbourAt: #south) neighbourAt: #east) neighbourAt: #north)) == (start neighbourAt: #east  ) ].
	self should: [((((start neighbourAt: #south) neighbourAt: #east) neighbourAt: #north) neighbourAt: #west) == start ].
	
	slotWidget := (CFGame get startCard neighbourAt: #north) submorphs first.
	slotWidget acceptDroppingMorph: north event: nil.
	slotWidget placeCard.
	player onConfirmedFigureSlot.
	
	self should: [(CFGame get startCard neighbourAt: #north) == north ].
	self should: [(north neighbourAt: #south) == (CFGame get startCard) ].
	
	slotWidget := (CFGame get startCard neighbourAt: #south) submorphs first.
	slotWidget acceptDroppingMorph: south event: nil.
	slotWidget placeCard.
	player onConfirmedFigureSlot.
	
	self should: [(CFGame get startCard neighbourAt: #north) == north ].
	self should: [(north neighbourAt: #south) == (CFGame get startCard) ].
	self should: [(CFGame get startCard neighbourAt: #south) == south ].
	self should: [(south neighbourAt: #north) == (CFGame get startCard) ].
	
	self should: [((((start neighbourAt: #east) neighbourAt: #south) neighbourAt: #west) neighbourAt: #north) == start ].
	self should: [((((start neighbourAt: #south) neighbourAt: #east) neighbourAt: #north) neighbourAt: #west) == start ].
	
	slotWidget := (south neighbourAt: #east) submorphs first.
	slotWidget acceptDroppingMorph: southeast event: nil.
	slotWidget placeCard.
	player onConfirmedFigureSlot.
	
	self should: [(start neighbourAt: #north) == north ].
	self should: [(north neighbourAt: #south) == start ].
	self should: [(start neighbourAt: #south) == south ].
	self should: [(south neighbourAt: #north) == start ].
	self should: [(south neighbourAt: #east) == southeast ].
	self should: [(southeast neighbourAt: #west) == south ].
	
	slotWidget := (north neighbourAt: #east) submorphs first.
	slotWidget acceptDroppingMorph: northeast event: nil.
	slotWidget placeCard.
	player onConfirmedFigureSlot.

	self should: [((((((((start neighbourAt: #north) neighbourAt: #east) neighbourAt: #east) neighbourAt: #south) neighbourAt: #south) neighbourAt: #west) neighbourAt: #west) neighbourAt: #north)         == start ].