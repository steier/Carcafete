tests
testNew
	| object |
	object := CFCastle new: {#north. #east. #south}.
	self should: [object isOccupying: #north];
		should: [object isOccupying: #east];
		should: [object isOccupying: #south];
		shouldnt: [object isOccupying: #west];
		shouldnt: [object isOccupying: #center].