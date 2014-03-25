tests
testtestSetFigures
|card|
	"
	card := CFCard new: {{#north}} with:{} with: {} with:{{#westnorth.#eastnorth.#eastsouth.#southeast.#southwest.#westsouth}}.
	card drawAt: (100@100).
	card openInWorld.
	card showPossibleFigures.
	card openInWorld ."