accessing
removeFiguresIfCompleted

	| realCloisters |

	realCloisters := Set new.
	
	(self forAllConnected: [:object|
		object realCloister ifNotNil: [realCloisters add: object realCloister]]) ifTrue:
			[realCloisters do: [:cloister | cloister removeFiguresIfCompleted]]