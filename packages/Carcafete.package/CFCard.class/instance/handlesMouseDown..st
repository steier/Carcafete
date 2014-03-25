modifying
handlesMouseDown: anEvent

	self isSticky ifTrue: [^false] ifFalse: [^true]
