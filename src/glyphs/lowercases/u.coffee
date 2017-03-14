exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 74
		spacingRight: 50 * spacing + 57
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
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.max(
						152 + (0),
						contours[0].nodes[2].expandedTo[1].y + 81
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 103 / 101 ) * thickness
						angle: 12 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( (contours[0].nodes[3].x + (Math.sin( 40 / 180 * Math.PI) * ( 61 / 101 ) * thickness)) - contours[0].nodes[0].expandedTo[0].x ) * ( 137 / 313 )
					y: - overshoot
					dirIn: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 88 / 101 ) * thickness
						angle: 72 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[3].expandedTo[1].x
					y: Math.max(
						133,
						contours[0].nodes[2].expandedTo[1].y + 62
					)
					dirIn: Math.max(
						- 130 / 180 * Math.PI,
						Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point ) + 30 / 180 * Math.PI
					)
					expand: Object({
						width: ( 61 / 101 ) * thickness
						angle: 180 - 50 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x + 21
					y: 0
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 91 / 101 ) * thickness,
							(contours[1].nodes[1].expandedTo[0].x + 21) - contours[1].nodes[1].x
						)
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x ) * 0.7
					y: contours[0].nodes[3].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[1].x
						angle: 180 + 'deg'
						distr: 1
					})
				2:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 1
					})
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 177 - (25),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
