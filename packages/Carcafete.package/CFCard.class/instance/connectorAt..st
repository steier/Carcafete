modifying
connectorAt: position

	| tmp |

	cardObjects do: [:each|
		tmp := each connectorAt: position.
		tmp ifNotNil: [^tmp]].

	^nil