exports.glyphs['C'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 69
		spacingRight: 50 * spacing + 46
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
						contours[0].nodes[2].expandedTo[0].x + ( 200 + ( 39 / 101 ) * thickness ) + 200 * width,
						contours[0].nodes[2].expandedTo[1].x + 10
					)
					y: 45
					dirOut: - 137 + 'deg'
					expand: Object({
						width: ( 94 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 219 / 353 )
					y: - ( 12 / 10 ) * overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 86 / 101 ) * thickness * opticThickness
						angle: 89 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (26/101) * thickness * opticThickness
					y: ( 389 / 706 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.2
					expand: Object({
						width: ( 109 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 226 / 359 )
					y: capHeight + ( 12 / 10 ) * overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 6
					y: capHeight - 26
					dirIn: 147 + 'deg'
					expand: Object({
						width: ( 98 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
