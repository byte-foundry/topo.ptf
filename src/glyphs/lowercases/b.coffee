exports.glyphs['b'] =
	unicode: 'b'
	glyphName: 'b'
	characterName: 'LATIN SMALL LETTER B'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 58 + (20)
		spacingRight: 50 * spacing + 55
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
					x: contours[0].nodes[1].x
					y: 23
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft + (25/101) * thickness
					y: Math.max(
						contours[1].nodes[1].y + ( contours[1].nodes[1].expand.width * Math.sin( contours[1].nodes[1].expand.angle - Math.PI ) ) + 10,
						contours[0].nodes[0].y + ( 56 / 101 ) * thickness
					)
					y: contours[0].nodes[0].y + ( 56 / 101 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x
					y: ascenderHeight
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
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: - 21 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 115 / 101 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) * ( 177 / 402 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 101 ) * thickness
						angle: Math.PI + ( 96 / 180 * Math.PI )
						distr: 1
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 202 + 200 * width - (28),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( contours[1].nodes[2].expand.width * Math.sin( contours[1].nodes[2].expand.angle - Math.PI - Math.PI / 2)) + 10
					)
					y: ( 295 / 526 ) * xHeight + (0)
					type: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.3
					expand: Object({
						width: ( 103 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[4].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[4].expandedTo[1].x ) * ( 199 / 360 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: 180 - 110 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight - ( 133 / 517 ) * xHeight
					dirIn: Math.max(
						43 / 180 * Math.PI,
						Utils.lineAngle( contours[1].nodes[4].expandedTo[1].point, contours[1].nodes[3].expandedTo[1].point ) + 30 / 180 * Math.PI
					)
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 101 ) * thickness
						angle: 115 + 'deg' # Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point )
						distr: 0
					})
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[4].y - 50
					expand: Object({
						width: contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[3].expandedTo[1].x
						angle: 0 + 'deg'
						distr: 0
					})
