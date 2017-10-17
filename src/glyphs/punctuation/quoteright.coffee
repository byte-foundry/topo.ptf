exports.glyphs['quoteright'] =
	unicode: '\'' # TODO wrong unicode
	glyphName: 'quoteright'
	characterName: 'RIGHT SINGLE QUOTATION MARK'
	ot:
		advanceWidth: contours[0].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 28
		spacingRight: 50 * spacing + 3
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
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].y - contours[0].nodes[3].y ) * ( 151 / 132 )
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
				3:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y - ( 136 / 101 ) * thickness
					dirOut: 180 + 'deg'
					type: 'smooth'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[3].y - 60 - ( 84 / 101 ) * thickness
					dirOut: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[1].point )
					expand: Object({
						width: ( 87 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 74 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
