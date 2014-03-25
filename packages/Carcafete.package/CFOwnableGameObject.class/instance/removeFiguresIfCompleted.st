accessing
removeFiguresIfCompleted

	| figures |

	figures := Set new.
	
	(self forAllConnected: [:object|
		object owner ifNotNil: [figures add: object owner]]) ifTrue:
			[figures do: [:figure| figure player removeFigureFromField: figure]]