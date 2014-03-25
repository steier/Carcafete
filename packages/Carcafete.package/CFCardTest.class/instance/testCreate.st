tests
testCreate
	| cfCard |
	cfCard := CFCard new.
	self 
	should:	[(cfCard objectAt: #north) == nil];
	should:	[(cfCard objectAt: #east) == nil];
	should:	[(cfCard objectAt: #south) == nil];
	should:	[(cfCard objectAt: #west) == nil];
	should:	[(cfCard objectAt: #center) == nil];
	should:	[(cfCard neighbourAt: #north) == nil];
	should:	[(cfCard neighbourAt: #east) == nil];
	should:	[(cfCard neighbourAt: #south) == nil];
	should:	[(cfCard neighbourAt: #west) == nil];
	should:	[(cfCard neighbourAt: #center) == nil].