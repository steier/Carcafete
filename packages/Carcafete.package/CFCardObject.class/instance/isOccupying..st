accessing
isOccupying: aPosition

	^(((self connectors select: [:each| (each direction) == aPosition]) size) > 0)