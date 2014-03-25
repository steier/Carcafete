as yet unclassified
flyweightLoadForm: filename

	| form |

	FlyweightStore ifNil: [FlyweightStore := Dictionary new].
	
	form := FlyweightStore at: filename ifAbsent: nil.
	form ifNotNil: [^form].  
	
	form := Form fromBinaryStream:
		((FileDirectory default directoryNamed: 'Carcafete')
		readOnlyFileNamed: (filename)).
		
	FlyweightStore at: filename put: form.

	^form