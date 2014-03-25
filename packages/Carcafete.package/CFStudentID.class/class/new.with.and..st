as yet unclassified
new: aFile with: aColorSet and: aPicture

	|studentID|
	
	studentID := CFStudentID basicNew.
	studentID colorSet: aColorSet.
	studentID initializeWith: aFile and: aPicture.
	
	^studentID   