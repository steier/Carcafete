tests
testDrawAll
	|stack i|
	i := 1.
	CFGame reset.
	stack := CFCardStack new.
	[stack isEmpty] whileFalse: [Transcript show: i;cr. i:= i + 1. stack takeCard openInWorld].