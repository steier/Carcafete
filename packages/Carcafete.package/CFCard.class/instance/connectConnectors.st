modifying
connectConnectors 

	| oponentCard |

	CFPositionUtil twelveDirections do: [:direction |
		oponentCard := self oponentCard: direction.
		oponentCard ifNotNil:
			[oponentCard ifNotSpacer:
				[self connectConnectorsAt: direction with: oponentCard]]]