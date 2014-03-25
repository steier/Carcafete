tests
testSetFigures
|card|
	CFGame reset.
	card := CFCard new: {{#north}} with:{} with: {} with:{{#westnorth.#eastnorth.#eastsouth.#southeast.#southwest.#westsouth}}.
	card draw.
	card showFigureSlots.
	card openInWorld.