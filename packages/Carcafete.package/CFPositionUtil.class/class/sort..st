as yet unclassified
sort: collection

	| sorterCollection directions |

	sorterCollection := OrderedCollection new.
	sorterCollection add: #center; add: #west; add:#north; add: #east; add:#south.
	directions := collection asSortedCollection.
	directions sort: [:first :second |
		((sorterCollection indexOf: first) <= (sorterCollection indexOf: second))].

	^directions