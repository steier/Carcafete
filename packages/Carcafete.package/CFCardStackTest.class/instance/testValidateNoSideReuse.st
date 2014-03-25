tests
testValidateNoSideReuse	
	|stack i set referenceSet card|
	referenceSet := {#northeast. #northwest. #eastnorth. #eastsouth. #southeast. #southwest. #westnorth. #westsouth.} asSet.
	i := 1.
	CFGame reset.
	stack := CFCardStack new.
	[stack isEmpty] whileFalse: [
		Transcript show: i;cr. i:= i + 1. 
		set := Set new.
		card := stack takeCard.
		card cardObjects do: [:object | object connectors do: [:connector | (referenceSet includes: (connector direction)) ifTrue: [set add: (CFPositionUtil cardDirection: (connector direction))].].].
		card cardObjects do: [:object | 
			object connectors do: [:connector | 
				(connector cardObject class = CFCastle) 
					ifTrue: [ self shouldnt: [(set includes: (connector direction))]]
					]
				]
			].