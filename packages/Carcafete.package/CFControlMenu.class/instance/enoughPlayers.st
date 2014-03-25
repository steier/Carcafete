accessing
enoughPlayers

	|testSet|

	testSet := (self students select: [:student| (student activate)]).

	^(testSet size == 0)