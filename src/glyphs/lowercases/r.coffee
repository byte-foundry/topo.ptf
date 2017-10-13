exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 58 + (20)
		spacingRight: 50 * spacing + 10
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
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 349 / 517 ) * xHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x - ( 20 / 101 ) * thickness
					y: xHeight
					dirIn: Math.max(
						- 80 / 180 * Math.PI,
						Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					)
					expand: Object({
						width: ( 90 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + ( 30 + ( 33 / 101 ) * thickness ) + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 80
					)
					y: xHeight + overshoot - 7
					type: 'smooth'
					tensionOut: 0.9
					dirOut: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ) - 13 / 180 * Math.PI
					expand: Object({
						width: ( 119 / 103 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[1].nodes[2].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[1].x ) * ( 135 / 190 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.3
					tensionIn: 1.1
					expand: Object({
						width: ( 104 / 101 ) * thickness
						angle: (180 - 98) / 180 * Math.PI
						distr: 1
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.min(
						xHeight - ( 133 / 517 ) * xHeight,
						( contours[1].nodes[1].y - Math.cos( - contours[1].nodes[1].expand.angle - Math.PI - Math.PI / 2 ) * contours[1].nodes[1].expand.width ) - 10
					)
					dirIn: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[2].expandedTo[1].point ) + ( 13 / 180 * Math.PI )
					typeOut: 'line'
					expand: Object({
						width: ( 63 / 101 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point )
						distr: 0
					})
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand: Object({
						width: contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[2].expandedTo[1].x
						angle: 180 + 'deg'
						distr: 0
					})
