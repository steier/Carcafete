accessing
connectorAt: position

	self connectors do: [:each| (each direction == position) ifTrue: [^each]].
	
	^nil