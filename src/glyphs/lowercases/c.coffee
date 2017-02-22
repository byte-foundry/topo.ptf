exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 48
		spacingRight: 50 * spacing + 33
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
						contours[0].nodes[2].expandedTo[0].x + ( 120 + ( 33 / 101 ) * thickness ) + 200 * width,
						contours[0].nodes[2].expandedTo[1].x + 10
					)
					y: 14
					dirOut: - 153 + 'deg'
					expand: Object({
						width: ( 100 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 219 / 353 )
					y: - ( 12 / 10 ) * overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: 89 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (25/101) * thickness
					y: ( 295 / 526 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand: Object({
						width: ( 102 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 226 / 359 )
					y: xHeight + ( 12 / 10 ) * overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 84 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 6
					y: xHeight - 10
					dirIn: 155 + 'deg'
					expand: Object({
						width: ( 100 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
