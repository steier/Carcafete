accessing
takeCard

	| card |

	card := self cards removeFirst.
	card draw.  
	self game spacersFor: card.  

	^card