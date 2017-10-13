exports.glyphs['T'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 6
		spacingRight: 50 * spacing + 6
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
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].x + 233 + 200 * width,
						thickness * 2
					)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					expand: Object({
						width: ( 105 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
