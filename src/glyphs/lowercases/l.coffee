exports.glyphs['l'] =
	unicode: 'l'
	glyphName: 'l'
	characterName: 'LATIN SMALL LETTER L'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 78
		spacingRight: 50 * spacing - 8
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
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[2].expandedTo[1].y + 80
					type: 'smooth'
					tensionOut: 1.3
					expand: Object({
						width: ( 102 / 101 ) * thickness
						angle: 6 + 'deg'
						distr: 0.25
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 150 / 214 ),
						contours[0].nodes[0].expandedTo[1].x
					)
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 14 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 10
					)
					y: 0
					dirIn: - 165 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
