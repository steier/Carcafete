tests
testNew
	| object |
	object := CFCloister new: {#center}.
	self
		should: [object isOccupying: #center];
		shouldnt: [object isOccupying: #north];
		shouldnt: [object isOccupying: #east];
		shouldnt: [object isOccupying: #south];
		shouldnt: [object isOccupying: #west].