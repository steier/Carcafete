accessing
readCardsFromFile

	| parser cardObject |

	parser := CFFileParser new.
	parser setFile: 'Stack.txt'.
	
	[parser nextLine] whileNotNil: 
		[cardObject := parser parse.
			cards add: 
				(CFCard new: (cardObject at: 1)
					add: (cardObject at: 2)
					add: (cardObject at: 3)
					add: (cardObject at: 4)
					on: self game)]	