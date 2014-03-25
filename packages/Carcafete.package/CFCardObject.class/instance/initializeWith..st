initialize-release
initializeWith: aPosition
	
	super initialize.
	
	self 
		connectors: Set new;
		addConnectorsAt: aPosition;
		figurePosition: (CFPositionUtil figureOffset: (self directions first))