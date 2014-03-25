modifying
connectConnectorsAt: direction with: oponentCard

	self
		forConnectorsAt: direction
			with: oponentCard do: [:conn1 :conn2| CFConnector connect: conn1 and: conn2] 