exports.glyphs['D'] =
	unicode: 'D'
	glyphName: 'D'
	characterName: 'LATIN CAPITAL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 69
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
					x: contours[0].nodes[1].expandedTo[1].x - 1
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].x ) * ( 130 / 265 )
					y: capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 94 / 101 ) * thickness * opticThickness
						angle: - 102 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 273 - (26)
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 105 / 101 ) * thickness * opticThickness
					)
					y: ( 391 / 706 ) * capHeight
					dirIn: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand: Object({
						width: ( 105 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[4].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].x ) * ( 90 / 265 )
					y: 0
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 91 / 101 ) * thickness * opticThickness
						angle: 100 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x - 1
					y: contours[0].nodes[0].y
					expand: Object({
						width: ( 90 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
