initialize-release
connect: connector1 and: connector2

	(connector1 isNil & connector2 isNil) ifTrue: [^true].
	
	connector1 connectWith: connector2.
	connector2 connectWith: connector1