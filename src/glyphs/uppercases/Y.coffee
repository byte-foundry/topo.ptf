exports.glyphs['Y'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 33
		spacingRight: 50 * spacing + 33
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (26/101) * thickness * opticThickness
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 101 ) * thickness * opticThickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					# x: Utils.onLine({
					# 	y: ( 291 / 706 ) * capHeight
					# 	on: [ contours[0].nodes[0].expandedTo[1].point, contours[3].nodes[1].expandedTo[0].point ]
					# })
					y: ( 291 / 706 ) * capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 97 / 101 ) * thickness * opticThickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						# angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) + Math.PI / 2
						angle: 0 + 'deg'
						distr: 0.95
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 258 + 200 * width - (26),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 104 / 101 ) * thickness * opticThickness + 50
					)
					y: capHeight
					expand: Object({
						width: ( 104 / 101 ) * thickness * opticThickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					# x: Utils.onLine({
					# 	y: contours[0].nodes[1].y
					# 	on: [ contours[0].nodes[0].expandedTo[1].point, contours[3].nodes[1].expandedTo[0].point ]
					# })
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 97 / 101 ) * thickness * opticThickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						# angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point ) - Math.PI / 2
						angle: 180 + 'deg'
						distr: 0.95
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: contours[0].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 104 / 101 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
