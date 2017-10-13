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
				0:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 40 + 200 * width,
						contours[0].nodes[3].expandedTo[1].x + ( 60 + ( 20 / 101 ) * thickness )
					)
					y: ascenderHeight
					dirOut: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ) - 11 / 180 * Math.PI
					type: 'smooth'
					expand: Object({
						width: ( 86 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
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
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[3].x
					y: ascenderHeight - ( 153 / 220 ) * ascender
					type: 'smooth'
					tensionIn: 1.3
					expand: Object({
						width: ( 102 / 101 ) * thickness
						angle: - 6 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[1].x + 77 * width + (25/101) * thickness
					y: 0
					typeIn: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x - 17
					y: contours[1].nodes[1].y
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: xHeight - 11
					typeOut: 'line'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
