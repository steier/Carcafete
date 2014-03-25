modifying
copyNeighboursFrom: card

	self neighbourCards: Dictionary new.
	
	(card neighbourCards) keysAndValuesDo: [:key :value |
		self neighbourCards at: key put: value]