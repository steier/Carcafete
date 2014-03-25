accessing
getPartValue

	| value |

	value := 1.
	
	self card neighbourCards keysAndValuesDo: [:direction :neighbourCard|
		neighbourCard ifNotSpacer: [value := value + 1].
		(neighbourCard neighbourAt: (CFPositionUtil getLeftOf: direction)) ifNotSpacer:
			[value := value + 1]].

	^value