as yet unclassified
new: aPlayer

	| figure |

	figure := CFFigure basicNew.
	figure player: aPlayer.
	figure initialize.

	^figure