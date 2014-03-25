initialize-release
createStartCard 

	self startCard: (CFCard new: {{#north}}
		add: {{#west.#east}}
		add: {}
		add: {{#westnorth}.{#eastnorth}.{#eastsouth.#southeast.#southwest.#westsouth}}
		on: self).
		
	self initiatizeStartCard