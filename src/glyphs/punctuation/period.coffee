exports.glyphs['period'] =
	unicode: '.'
	glyphName: 'period'
	characterName: 'FULL STOP'
	ot:
		advanceWidth: contours[0].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 63
		spacingRight: 50 * spacing + 53
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: contours[0].nodes[3].y + ( contours[0].nodes[1].y - contours[0].nodes[3].y ) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[2].x - contours[0].nodes[0].x ) / 2
					y: contours[0].nodes[3].y + ( 136 / 101 ) * thickness
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].y - contours[0].nodes[3].y ) * ( 151 / 132 )
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
