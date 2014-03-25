modifying
directions

	|directions|

	directions := OrderedCollection new.
	self connectors do: [:each| directions add: each direction].
	
	^directions