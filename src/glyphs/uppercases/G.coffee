exports.glyphs['G'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 69
		spacingRight: 50 * spacing + 78
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
						contours[0].nodes[2].expandedTo[0].x + ( 200 + ( 77 / 101 ) * thickness ) + 200 * width,
						contours[0].nodes[2].expandedTo[1].x + 10
					)
					y: 42
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) + ( 12 / 180 * Math.PI )
					expand: Object({
						width: ( 85 / 101 ) * thickness * opticThickness
						angle: contours[0].nodes[0].dirOut - Math.PI / 2
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 219 / 353 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
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
						width: ( 107 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 226 / 359 )
					y: capHeight + ( 15 / 10 ) * overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.1
					expand: Object({
						width: ( 92 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x - 11
					y: capHeight - 20
					dirIn: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[3].point ) - ( 16 / 180 * Math.PI )
					expand: Object({
						width: ( 107 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[2].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * ( 169 / 270 )
					y: contours[0].nodes[2].expandedTo[1].y - 10
					typeOut: 'line'
					expand: Object({
						width: ( 86 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
					expand: Object({
						width: ( 86 / 101 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					expand: Object({
						width: ( 100 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0
					})
