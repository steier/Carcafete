accessing
actionSelect: aSymbolOrString

	(nil = aSymbolOrString or:
		 ['nil' = aSymbolOrString or:
			[aSymbolOrString isEmpty]]) ifTrue:
				[^ actionSelect := nil].

	actionSelect := aSymbolOrString asSymbol
