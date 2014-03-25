modifying
doesFitAt: direction with: oponentCard

	self
		forConnectorsAt: direction
			with: oponentCard do: [:conn1 :conn2 | ^CFConnector doMatch: conn1 and: conn2] 