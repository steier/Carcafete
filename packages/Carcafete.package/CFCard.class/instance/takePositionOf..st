modifying
takePositionOf: slot

	self 
		copyNeighboursFrom: slot;
		surroundWithSpacers;
		notifyNeighbours;
		connectConnectors;
		removeLink: #mouseDown;
		setPlaced.
		
	self game removeSlot: slot