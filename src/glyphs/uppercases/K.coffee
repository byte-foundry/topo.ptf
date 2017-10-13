exports.glyphs['K'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing - 13
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
					x: spacingLeft + (26/101) * thickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
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
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 112 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 50 + 0.75 * ( 119 / 101 ) * thickness * opticThickness
					)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( ( 103 / 101 ) * thickness ) / Math.cos( Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].expandedTo[0].point ) - Math.PI / 2 )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x - 4
					y: ( 393 / 706 ) * capHeight * crossbar
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: Math.PI + Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) - Math.PI / 2
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - 4
					y: contours[1].nodes[1].y - Math.max( 40, (( 20 + 20 * width ) / 101) * thickness * opticThickness )
					typeOut: 'line'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: Math.PI + Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) - Math.PI / 2
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 137 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 50 + 0.75 * ( 119 / 101 ) * thickness * opticThickness
					)
					y: 0
					expand: Object({
						width: (( 119 / 101 ) * thickness * opticThickness) / Math.cos( Math.PI - Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) - Math.PI / 2 )
						angle: 0 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: true
			nodes:
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
