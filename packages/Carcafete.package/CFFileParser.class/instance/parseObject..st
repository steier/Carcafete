accessing
parseObject: string

	| collection |

	collection := OrderedCollection new.
	string splitBy: ' ' do: [:direction|
		self addIfNotEmptySymbol: (direction asSymbol) to: collection].   

	^collection