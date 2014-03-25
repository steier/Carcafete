tests
testInit
	|stack x|
	stack := CFCardStack new.
	x := stack takeCard.
	"x print.
	stack takeCard print."
	"[(cfCardStack size) > 0 ] whileTrue: (cfCardStack takeCard print)."
