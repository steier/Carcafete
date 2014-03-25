initialize-release
doMatch: connector1 and: connector2

	(connector1 isNil & connector2 isNil) ifTrue: [^true].
	
	^(connector1 class = connector2 class)