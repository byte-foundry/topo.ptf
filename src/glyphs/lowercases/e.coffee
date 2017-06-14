exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 48
		spacingRight: 50 * spacing + 38
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
					x: contours[0].nodes[4].x
					y: 20
					dirOut: - 143 + 'deg'
					expand: Object({
						width: ( 97 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 226 / 368 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.35
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (25/101) * thickness
					y: ( 280 / 526 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 212 / 401 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.38
					tensionOut: 1.2
					expand: Object({
						width: ( 81 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				4:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 201 + 200 * width - (25),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( 100 / 101 ) * thickness + 10
					)
					y: ( 269 / 526 ) * xHeight * crossbar
					dirIn: 86 / 180 * Math.PI
					tensionIn: 1.2
					expand: Object({
						width: ( 100 / 101 ) * thickness
						angle: 157 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x - Math.tan( Math.PI / 2 - contours[0].nodes[4].dirIn ) * contours[1].nodes[0].expand.width
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[4].expandedTo[0].y - contours[1].nodes[1].expandedTo[0].y
						angle: contours[0].nodes[4].dirIn
						distr: 0
					})
				1:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 78 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0.4
					})
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[0].y
					expand: Object({
						width: ( 78 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
