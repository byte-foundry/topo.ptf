exports.glyphs['P'] =
	unicode: 'P'
	glyphName: 'P'
	characterName: 'LATIN CAPITAL LETTER P'
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
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 211 - (26)
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 105 / 101 ) * thickness * opticThickness
					)
					y: contours[1].nodes[4].expandedTo[1].y + ( ( contours[1].nodes[0].y - contours[1].nodes[0].expand.width ) - contours[1].nodes[4].expandedTo[1].y ) * ( 140 / 231 )
					dirIn: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( 105 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[4].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].x ) * ( 90 / 265 ) * Math.max( 1, Math.sqrt( width * 0.75 ) )
					y: contours[1].nodes[4].expandedTo[0].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 101 ) * thickness * opticThickness
						angle: 103 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x - 1
					y: ( 291 / 706 ) * capHeight + (23)
					expand: Object({
						width: ( 92 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.25
					})
