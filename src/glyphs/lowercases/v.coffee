exports.glyphs['v'] =
	unicode: 'v'
	glyphName: 'v'
	characterName: 'LATIN SMALL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 22
		spacingRight: 50 * spacing + 22
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
					x: spacingLeft + (25/101) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.93
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: 180 + 'deg'
						distr: 0.93
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 210 + 200 * width - (25),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: xHeight
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
