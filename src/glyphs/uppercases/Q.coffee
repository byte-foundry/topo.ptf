exports.glyphs['Q'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 67
		spacingRight: 50 * spacing + 67
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
			closed: true
			nodes:
				0:
					x: spacingLeft + (25/101) * thickness
					y: ( 389 / 706 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.4
					expand: Object({
						width: ( 109 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + ( 15 / 12 ) * overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 87 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 314 + 200 * width - (26),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 109 / 101 ) * thickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.4
					tensionOut: 1.2
					expand: Object({
						width: ( 109 / 101 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 86 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x - 120
					y: ( 182 / 216 ) * descender
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 101 ) * thickness * opticThickness * Math.max( 1, Math.sqrt( width * 0.75 ) )
						angle: 0 + 'deg'
						distr: 0.35
					})
				1:
					x: contours[0].nodes[3].x + 22
					y: ( contours[0].nodes[3].expandedTo[1].y + contours[0].nodes[3].expandedTo[0].y ) * ( 66 / 86 )
					expand: Object({
						width: ( 104 / 101 ) * thickness * opticThickness * Math.max( 1, Math.sqrt( width * 0.75 ) )
						angle: 0 + 'deg'
						distr: 0
					})
