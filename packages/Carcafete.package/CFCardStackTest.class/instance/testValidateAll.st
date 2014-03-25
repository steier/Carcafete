tests
testValidateAll	
	|stack i set|
	i := 1.
	CFGame reset.
	stack := CFCardStack new.
	[stack isEmpty] whileFalse: [
		Transcript show: i;cr. i:= i + 1. 
		set := {#north. #northeast. #northwest. #east. #eastnorth. #eastsouth. #south. #southeast. #southwest. #west. #westnorth. #westsouth.} asSet.
		stack takeCard cardObjects do: [:object | object connectors do: [:connector | (connector direction = #center) ifFalse: [set remove: connector direction].].].
		].