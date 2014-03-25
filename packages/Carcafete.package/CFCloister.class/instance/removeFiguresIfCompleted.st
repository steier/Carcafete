accessing
removeFiguresIfCompleted

	self owner ifNotNil: 
		[(9 = self getPartValue) ifTrue:
			[self owner player removeFigureFromField: self owner]]