accessing
setFile: name
	
	 self file: ((FileDirectory default directoryNamed: 'Carcafete') readOnlyFileNamed: (name))