exports.glyphs['n'] =
	unicode: 'n'
	glyphName: 'n'
	characterName: 'LATIN SMALL LETTER N'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 58 + (20)
		spacingRight: 50 * spacing + 75
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
					dirIn: - 80 + 'deg'
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
					x: contours[1].nodes[1].expandedTo[1].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 180 + 200 * width - (28),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: xHeight - ( 154 / 517 ) * xHeight + (6)
					type: 'smooth'
					expand: Object({
						width: ( 103 / 101 ) * thickness
						angle: 180 - 168 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[3].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[1].x - contours[1].nodes[3].expandedTo[1].x ) * ( 184 / 321 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: 180 - 110 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					# y: contours[0].nodes[1].expandedTo[1].y
					y: xHeight - ( 133 / 517 ) * xHeight
					# dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point ) - Math.PI / 2
					dirIn: 43 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 101 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point )
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand: Object({
						width: contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[3].expandedTo[1].x
						angle: 180 + 'deg'
						distr: 0
					})
