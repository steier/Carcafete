as yet unclassified
initializeDictWithDirections: value

	| dict |
	
	dict := Dictionary new.
	dict at: #north put: value.
	dict at: #east put: value.
	dict at: #south put: value.
	dict at: #west put: value.
	
	^dict