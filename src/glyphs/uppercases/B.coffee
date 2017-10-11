exports.glyphs['B'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 48
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
					x: ( contours[1].nodes[0].x + contours[1].nodes[2].expandedTo[1].x ) * ( 108 / 191 )
					y: capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 / 101 ) * thickness * opticThickness
						angle: - 115 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 199 - (26)
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 105 / 101 ) * thickness * opticThickness
					)
					y: contours[1].nodes[4].expandedTo[1].y + ( ( contours[1].nodes[0].y - contours[1].nodes[0].expand.width ) - contours[1].nodes[4].expandedTo[1].y ) * ( 131 / 217 )
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
					x: contours[1].nodes[1].expandedTo[1].x - 35
					y: contours[1].nodes[4].expandedTo[0].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 101 ) * thickness * opticThickness
						angle: 93 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[1].x
					y: ( 350 / 706 ) * capHeight * crossbar + (14)
					expand: Object({
						width: ( 45 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[4].y
					expand: Object({
						width: ( 67 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0.2
					})
				1:
					x: contours[2].nodes[0].x + ( contours[2].nodes[2].expandedTo[1].x - contours[2].nodes[0].x ) * ( 155 / 230 )
					y: contours[2].nodes[0].expandedTo[0].y
					dirOut: 0 + 'deg'
					typeIn: 'line'
					tensionOut: 1.2
					expand: Object({
						width: ( 79 / 101 ) * thickness * opticThickness
						angle: - 124 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 238 - (26)
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 105 / 101 ) * thickness * opticThickness
					)
					y: ( contours[2].nodes[4].y + contours[2].nodes[4].expand.width ) + ( contours[2].nodes[0].expandedTo[1].y - ( contours[2].nodes[4].y + contours[2].nodes[4].expand.width ) ) * ( 130 / 225 ) - (3)
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
					x: contours[2].nodes[4].x + ( contours[2].nodes[2].expandedTo[1].x - contours[2].nodes[4].x ) * ( 73 / 230 )
					y: 0
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 91 / 101 ) * thickness * opticThickness
						angle: 98 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x - 1
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 90 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
