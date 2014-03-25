accessing
parse

	| collection |
	
	collection := OrderedCollection new.
	(self line splitBy: ';') do: [:aCardObject|
			collection add: (self parseObjectType: aCardObject)].
	self removeLine.
	
	^ collection
