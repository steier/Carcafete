modifying
couldTakePositionOfWithRotation: spacer

	| returnValue |

	returnValue := false.
	
	4 timesRepeat:
		[(self couldTakePositionOf: spacer) ifTrue: [returnValue := true].
		self rotateLogicLeft].

	^returnValue