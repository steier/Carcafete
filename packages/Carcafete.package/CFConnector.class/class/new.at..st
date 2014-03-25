initialize-release
new: anObject at: aDirection

	| connector |

	connector := CFConnector new.
	connector cardObject: anObject.
	connector direction: aDirection.

	^connector