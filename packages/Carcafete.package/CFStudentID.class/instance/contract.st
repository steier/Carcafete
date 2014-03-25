accessing
contract

		self
			removeLink: #mouseDown;
			beSticky;
			extent: ((self extent)-(90@65)).
			
		self submorphs do: [:each|
			each extent: ((each extent)-(90@65)).
			each removeLink: #mouseDown]