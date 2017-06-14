exports.glyphs['one'] =
	unicode: '1'
	glyphName: 'one'
	characterName: 'DIGIT ONE'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 33
		spacingRight: 50 * spacing + 144
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight - ( 114 / 706 ) * capHeight - (9)
					typeOut: 'line'
					expand: Object({
						width: ( 96 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].x + 135 * width + (50),
						contours[0].nodes[0].x + 50 + (50/101) * thickness
					)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[0].x
					y: capHeight - ( 89 / 101 ) * thickness
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: capHeight
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
