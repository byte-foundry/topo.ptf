exports.glyphs['E'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 47
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
					x: spacingLeft + (26/103) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - 10
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 157,
						contours[0].nodes[0].expandedTo[1].x + 50
					)
					y: capHeight
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - 10
					y: contours[3].nodes[0].expandedTo[1].y + ( contours[1].nodes[1].expandedTo[1].y - contours[3].nodes[0].expandedTo[1].y ) / 2 * crossbar
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 90 / 101 ) * thickness,
							( contours[1].nodes[1].expandedTo[1].y - contours[3].nodes[0].expandedTo[1].y ) - 50
						)
						angle: - 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[1].x - 25 * width
					y: contours[2].nodes[0].y
					expand: Object({
						width: Math.min(
							( 90 / 101 ) * thickness,
							( contours[1].nodes[1].expandedTo[1].y - contours[3].nodes[0].expandedTo[1].y ) - 50
						)
						angle: - 90 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x + 12
					y: 0
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x - 10
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
