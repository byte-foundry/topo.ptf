exports.glyphs['t'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 11
		spacingRight: 50 * spacing + 30
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
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 21 + 200 * width,
						contours[0].nodes[2].expandedTo[1].x + ( 60 + ( 20 / 101 ) * thickness )
					)
					y: 0
					dirOut: - 165 + 'deg'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 150 / 221 ),
						contours[0].nodes[2].expandedTo[1].x
					)
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 78 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[0].x + 77 * width + (25/101) * thickness
					y: Math.min(
						154,
						154
					)
					type: 'smooth'
					tensionIn: 1.3
					expand: Object({
						width: ( 102 / 101 ) * thickness
						angle: 7 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x
					y: xHeight + ( 102 / 526 ) * xHeight
					typeIn: 'line'
					expand: Object({
						width: ( 102 / 101 ) * thickness
						angle: 5 + 'deg'
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
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
