creation
createPlayer

	| yPosition player|
	
	self students: (self students select: [:student| (student activate)]).
	
	yPosition := 220.
	self students do: [:student|
		player :=  CFPlayer new: student 
							and: ((self game topRight) + (-190@ yPosition))
							and: self game.
		self game players addLast: player.
		yPosition := yPosition+110]
