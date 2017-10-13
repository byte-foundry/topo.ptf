exports.glyphs['N'] =
	unicode: 'N'
	glyphName: 'N'
	characterName: 'LATIN CAPITAL LETTER N'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
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
					x: contours[2].nodes[0].expandedTo[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: (( 91 / 101 ) * thickness) / Math.cos( Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].point ) + Math.PI / 2 )
						angle: 0 + 'deg'
						distr: ( 87 / 102 )
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight
					expand: Object({
						width: thickness * Math.max( 1, Math.sqrt( width / 3 ) )
						angle: 0 + 'deg'
						distr: ( 14 / 94 )
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 245 + 200 * width - (26),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * contours[1].nodes[1].expand.width + 20 + ( 161 / 101 ) * thickness * opticThickness
					)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].x
					y: capHeight
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
