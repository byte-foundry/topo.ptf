exports.glyphs['U'] =
	unicode: 'U'
	glyphName: 'U'
	characterName: 'LATIN CAPITAL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
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
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 260 + 200 * width - (26),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness * opticThickness * Math.sin( ( Math.PI / 2 ) - ( 4 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						( 296 / 706 ) * capHeight + (2),
						contours[0].nodes[2].y + ( 90 / 101 ) * thickness * opticThickness + 10
					) # TODO
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 176 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * ( 232 / 460 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand: Object({
						width: ( 90 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + (26/101) * thickness * opticThickness
					y: contours[0].nodes[1].y
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.2
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 3 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
