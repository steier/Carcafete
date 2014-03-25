as yet unclassified
connect: card1 at: card1Direction with: card2 at: card2Direction

	card1 setNeighbour: card2 at: card1Direction.
	card2 setNeighbour: card1 at: card2Direction