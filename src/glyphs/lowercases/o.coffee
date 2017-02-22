exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 53
		spacingRight: 50 * spacing + 53
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
			closed: true
			nodes:
				0:
					x: spacingLeft + (25/101) * thickness
					y: ( 276 / 526 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.4
					expand: Object({
						width: ( 98 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 84 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 208 + 200 * width - (25),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 98 / 101 ) * thickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.4
					tensionOut: 1.2
					expand: Object({
						width: ( 98 / 101 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
