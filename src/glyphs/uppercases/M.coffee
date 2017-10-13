exports.glyphs['M'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
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
					x: contours[1].nodes[1].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[0].x - contours[1].nodes[1].expandedTo[0].x ) * 0.5
					y: ( 196 / 706 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: (( 91 / 101 ) * thickness) / Math.cos( Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].point ) + Math.PI / 2 )
						angle: 0 + 'deg'
						distr: Math.max( 0, 1 - ( 0.26 / 101 ) * thickness * opticThickness )
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					expand: Object({
						width: thickness * Math.max( 1, Math.sqrt( width / 3 ) )
						angle: 0 + 'deg'
						distr: 0.1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[3].nodes[1].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * Math.max( 1, Math.sqrt( width / 3 ) )
						angle: 180 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[1].nodes[1].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[0].x - contours[1].nodes[1].expandedTo[0].x ) * 0.5
					y: ( 196 / 706 ) * capHeight
					expand: Object({
						width: contours[1].nodes[0].expand.width
						angle: 180 + 'deg'
						distr: Math.max( 0, 1 - ( 0.26 / 101 ) * thickness * opticThickness )
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 373 + 200 * width - (26),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * contours[1].nodes[1].expand.width + 2 * ( 150 / 100 ) * thickness * opticThickness
					)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[3].nodes[0].x
					y: capHeight
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
