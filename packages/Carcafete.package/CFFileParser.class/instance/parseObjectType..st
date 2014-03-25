accessing
parseObjectType: string

	| collection |

	collection := OrderedCollection new.
	string splitBy: '.' do: [ :object|
		self addIfNotEmpty: (self parseObject: object) to: collection].

	^collection