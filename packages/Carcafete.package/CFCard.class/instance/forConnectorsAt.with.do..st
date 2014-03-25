modifying
forConnectorsAt: direction with: oponentCard do: aBlock

	aBlock
		value: (self connectorAt: direction)
		value: (oponentCard connectorAt: (CFPositionUtil oppositeDirection: direction))