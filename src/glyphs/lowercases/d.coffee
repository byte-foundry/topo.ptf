exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 56
		spacingRight: 50 * spacing + 58
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
					x: contours[0].nodes[2].expandedTo[0].x + 20
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 101 ) * thickness
						width: Math.min(
							( 90 / 101 ) * thickness,
							(contours[0].nodes[3].expandedTo[0].x + 20) - contours[0].nodes[1].expandedTo[1].x
						)
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[1].nodes[0].y + Math.sin( contours[1].nodes[0].expand.angle ) * contours[1].nodes[0].expand.width + Math.min(
						20,
						20 / 101 * thickness
					)
					typeOut: 'line'
					expand: Object({
						width: ( 80 / 101 ) * thickness
						angle: 180 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x + 200 + 200 * width - (25),
						contours[1].nodes[2].expandedTo[0].x + 0.75 * thickness + 10
					)
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: Math.max(
						( 126 / 526 ) * xHeight,
						contours[1].nodes[1].y + thickness + 35
					)
					dirOut: Math.max(
						Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + ( 4 / 180 * Math.PI ),
						- 130 / 180 * Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( 65 / 101 ) * thickness
						angle: - 30 / 180 * Math.PI
						distr: 0
					})
				1:
					x: ( contours[1].nodes[2].expandedTo[1].x + contours[1].nodes[0].expandedTo[1].x ) * ( 176 / 356 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.2
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 180 + 77 + 'deg'
						distr: 1
					})
				2:
					x: spacingLeft + (26/101) * thickness
					y: ( 295 / 526 ) * xHeight
					dirIn: -90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 103 / 101 ) * thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: ( contours[1].nodes[2].expandedTo[1].x + contours[1].nodes[4].expandedTo[1].x ) * ( 173 / 356 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.3
					tensionOut: 1.2
					expand: Object({
						width: ( 87 / 101 ) * thickness
						angle: 180 - 75 + 'deg' # TODO
						distr: 1
					})
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: Math.min(
						xHeight - ( 106 / 526 ) * xHeight,
						contours[1].nodes[3].y - ( Math.cos( -Math.PI / 2 + contours[1].nodes[3].expand.angle ) * contours[1].nodes[3].expand.width ) - 10
					)
					dirIn: Math.max(
						Utils.lineAngle( contours[1].nodes[4].expandedTo[0].point, contours[1].nodes[3].point ) - ( 17 / 180 * Math.PI ),
						130 / 180 * Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( 67 / 101 ) * thickness
						angle: 36 / 180 * Math.PI
						distr: 0
					})
