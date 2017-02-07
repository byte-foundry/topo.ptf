exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 84
		spacingRight: 50 * spacing + 84
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (50/100) * thickness
					y: 0
					dirOut: 30 + 'deg'
					tensionOut: 0
					expand: Object({
						width: thickness
						angle: Math.PI / 2
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
