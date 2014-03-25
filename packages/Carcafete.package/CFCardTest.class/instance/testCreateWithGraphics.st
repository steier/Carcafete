tests
testCreateWithGraphics
|card|
	CFGame reset.
	card := CFCard new: {{#north}} with: {{#west.#east}} with: {} with:{{#westnorth}.{#eastnorth}.{#eastsouth.#southeast.#southwest.#westsouth}}.
	card draw.