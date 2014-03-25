tests
testShow
	| cfCard |
	
	CFGame reset.
	CFGame get openInWorld.
	
	cfCard := CFCard new: {{#west. #north}} with: {} with: {} with: {}.  
	cfCard draw.
	cfCard openInWorld.
	
	cfCard rotateLeft.
	
	(CFGame get startCard neighbourAt: #north) show.  