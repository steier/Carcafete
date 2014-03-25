modifying
ifOccupied: aBlock

	self forAllConnected: [:cardObject| cardObject owner ifNotNil: aBlock]