accessing
addIfNotEmptySymbol: symbol to: collection

	(symbol == #'') ifFalse: [collection add: symbol]