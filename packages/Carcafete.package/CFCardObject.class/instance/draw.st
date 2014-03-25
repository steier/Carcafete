as yet unclassified
draw

	|directions fileName|

	directions := CFPositionUtil sort: self directions.
	fileName := self class name.
	directions do: [:each | fileName := fileName, '_', (each asString)].
	fileName := fileName, '.png'.
	
	self drawCertainObject: fileName
