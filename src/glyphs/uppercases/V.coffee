exports.glyphs['V'] =
	unicode: 'V'
	glyphName: 'V'
	characterName: 'LATIN CAPITAL LETTER V'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 19
		spacingRight: 50 * spacing + 19
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
						width: ( 111 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 3 ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					expand: Object({
						width: (( 102 / 101 ) * thickness) / Math.cos( Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].point ) + Math.PI / 2 )
						angle: 0 + 'deg'
						distr: Math.max( 0, 1 - ( 0.07 / 101 ) * thickness * opticThickness )
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[1].expand.width
						angle: 180 + 'deg'
						distr: Math.max( 0, 1 - ( 0.07 / 101 ) * thickness * opticThickness )
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 275 + 200 * width - (26),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: capHeight
					expand: Object({
						width: ( 112 / 101 ) *  thickness * Math.max( 1, Math.sqrt( width / 3 ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
