exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 17
		spacingRight: 50 * spacing - 6
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
				3:
					x: contours[1].nodes[0].x + 77 * width
					y: 0
					typeIn: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[0].nodes[3].x
					y: ascenderHeight - ( 112 / 220 ) * ascender
					type: 'smooth'
					tensionIn: 1.3
					expand: Object({
						width: ( 102 / 101 ) * thickness
						angle: 180 + 6 + 'deg'
						distr: 0.75
					})
				1:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 150 / 214 ),
						contours[0].nodes[3].expandedTo[1].x
					)
					y: ascenderHeight + overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 14 + 200 * width,
						contours[0].nodes[3].expandedTo[1].x + 10
					)
					y: ascenderHeight
					dirOut: - 165 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - 11
					typeOut: 'line'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 17
					y: contours[1].nodes[0].y
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
