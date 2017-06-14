exports.glyphs['two'] =
	unicode: '2'
	glyphName: 'two'
	characterName: 'DIGIT TWO'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 44
		spacingRight: 50 * spacing + 64
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						31,
						( 31 / 101 ) * thickness
					)
					dirOut: 90 + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: ( 94 / 101 ) * thickness
						angle: - 13 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[4].expandedTo[0].x + 8 + (35/101) * thickness
					y: capHeight / 2 - (22/101) * thickness
					dirOut: Math.max(
						Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].expandedTo[1].point ) + ( - 10 * width + ( 10 / 101 ) * thickness - 10 ) / 180 * Math.PI,
						10 / 180 * Math.PI
					)
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 95 / 101 ) * thickness
						angle: contours[0].nodes[2].dirOut - Math.PI / 2
						distr: 0.5
					})
				3:
					x: Math.max(
						contours[0].nodes[5].x + ( 118 + Math.max( 50, ( 50 / 101 ) * thickness ) ) + 200 * width - (26),
						contours[0].nodes[5].x + 0.25 * ( 105 / 101 ) * thickness + 10
					)
					# y: capHeight - ( 175 / 706 ) * capHeight
					y: ( (capHeight / 2 + (22 / 101) * thickness ) + ( contours[0].nodes[4].y - ( contours[0].nodes[4].expand.width * Math.sin( Math.PI - contours[0].nodes[4].expand.angle ) ) )) / 2 + (28)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 105 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				4:
					x: ( contours[0].nodes[5].x + contours[0].nodes[3].expandedTo[1].x ) * ( 179 / 368 )
					y: capHeight + ( 15 / 10 ) * overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: ( 180 - 103 ) / 180 * Math.PI
						distr: 1
					})
				5:
					x: spacingLeft + 26 + (0)
					y: capHeight - 40 - (11)
					dirIn: Utils.lineAngle( contours[0].nodes[5].expandedTo[0].point, contours[0].nodes[4].point )
					expand: Object({
						width: ( 110 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0.9
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x + 3
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x - ( 5 / 101 ) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
