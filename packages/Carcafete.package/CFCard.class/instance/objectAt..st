accessing
objectAt: position

	self cardObjects do: [:object | (object isOccupying: position) ifTrue: [^object]].

	^nil