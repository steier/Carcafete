tests
testFlood
	| card1 west north east south  connectedObjects|
	
	card1 := CFCard new: {{#north. #east. #south. #west}} with: {} with: {} with: {}.
	card1 surroundWithSpacers.
	
	west := CFCard new: {{#east.}} with: {} with: {} with: {}.
	north := CFCard new: {{#south}} with: {} with: {} with: {}.
	east := CFCard new: {{#west}} with: {} with: {} with: {}.
	south := CFCard new: {{#north}} with: {} with: {} with: {}.
	
	west takePositionOf: (card1 neighbourAt: #west). 
	north takePositionOf: (card1 neighbourAt: #north).
	east takePositionOf: (card1 neighbourAt: #east).
	south takePositionOf: (card1 neighbourAt: #south).
	
	self should: [(card1 connectorAt: #south) counterpart notNil].
	self should: [(card1 connectorAt: #east) counterpart notNil].
	self should: [(card1 connectorAt: #west) counterpart notNil].
	self should: [(card1 connectorAt: #north) counterpart notNil].
	
	connectedObjects := OrderedCollection new.
	
	self should: [(west connectorAt: #east) cardObject forAllConnected: [:object | connectedObjects add: object card ]].
	
	self should: [connectedObjects includes: card1].
	self should: [connectedObjects includes: west].
	self should: [connectedObjects includes: north].
	self should: [connectedObjects includes: east].
	self should: [connectedObjects includes: south].