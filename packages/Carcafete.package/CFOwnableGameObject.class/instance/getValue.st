accessing
getValue

	| value |

	value := 0.
	
	(self forAllConnected: [:object|
		value := (value + object getPartValue)]) ifTrue:
			[value := value * self valueFactorForFinished]. 

	^value