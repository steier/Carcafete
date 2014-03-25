as yet unclassified
test
	| south east player slotWidget studentCard |
	south := CFCard new: {{#south}} with: {{#east. #west}} with: {} with: {{#westsouth. #eastsouth}. {#westnorth. #eastnorth. #northwest. #northeast}}.
	east := CFCard new:{} with:{{#east. #west}} with: {} with: {{#westnorth. #northeast. #northwest. #eastnorth}.{#eastsouth. #westsouth. #southeast. #southwest}}.
	CFGame reset.
	CFGame get openInWorld.
	studentCard := CFStudentID new.
	studentCard baseColor: (Color red). 
	player := CFPlayer new: studentCard and: (0@0).
	"TODO replace CFStudentID with constructor"  
	CFGame get players addLast: player.
	
	CFGame get cardStack cards: {south. east} asOrderedCollection.
	CFGame get startGame.
	
	self should: [south couldTakePositionOfWithRotation: (CFGame get startCard neighbourAt: #west)].
	self should: [south couldTakePositionOfWithRotation: (CFGame get startCard neighbourAt: #north)].
	self should: [south couldTakePositionOfWithRotation: (CFGame get startCard neighbourAt: #east)].
	self should: [south couldTakePositionOfWithRotation: (CFGame get startCard neighbourAt: #south)].
		
	slotWidget := (CFGame get startCard neighbourAt: #south) submorphs first.
	slotWidget acceptDroppingMorph: south event: nil.
	
	slotWidget placeCard.