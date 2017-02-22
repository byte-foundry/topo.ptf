exports.glyphs['A'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 26
		spacingRight: 50 * spacing + 26
	tags: [
		'all',
		'latin',
		'uppercase'
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
					x: spacingLeft + (26/101) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight
					expand: Object({
						width: ( 97 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.93
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 97 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.93
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 280 + 200 * width - (26),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 105 / 101 ) * thickness * opticThickness + 10
					)
					y: 0
					expand: Object({
						width: ( 105 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: ( (159 + (42)) / 706 ) * capHeight * crossbar
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: ( (159 + (42)) / 706 ) * capHeight * crossbar
					expand: Object({
						width: ( 86 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: Utils.onLine({
						y: contours[2].nodes[0].y
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 86 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
					})
