exports.glyphs['w'] =
	unicode: 'w'
	glyphName: 'w'
	characterName: 'LATIN SMALL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 33
		spacingRight: 50 * spacing + 33
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	# anchors:
	# 	0:
	# 		thickness: Math.min(
	# 			( 78 / 101 ) * thickness,
	# 			Math.max(
	# 				( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 3,
	# 				30
	# 			)
	# 		)
	# 	1:
	# 		thickness: Math.min(
	# 			( 78 / 101 ) * thickness,
	# 			(( contours[3].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) - 40 * 2) / 3.5 - 5 * width
	# 		)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (25/101) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * Math.max( 1, Math.sqrt( width / 3 ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: 0
					expand: Object({
						# width: (( 91 / 101 ) * thickness) / Math.cos( Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].point ) + Math.PI / 2 )
						width: Math.min(
							(( 91 / 101 ) * thickness) / Math.cos( Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].point ) + Math.PI / 2 ),
							( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - ( 105 / 101 ) * thickness * width
						)
						angle: 0 + 'deg'
						distr: Math.max( 0, 1 - ( 0.07 / 101 ) * thickness * opticThickness )
						distr: 0.93
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
						# width: contours[0].nodes[1].expand.width
						width: Math.min(
							contours[0].nodes[1].expand.width,
							( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - ( 105 / 101 ) * thickness * width
						)
						angle: 180 + 'deg'
						distr: Math.max( 0, 1 - ( 0.07 / 101 ) * thickness * opticThickness )
						distr: 0.93
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[3].nodes[0].expandedTo[1].x ) / 2
					y: xHeight - ( 42 / 526 ) * xHeight
					expand: Object({
						width: Math.min(
							thickness * Math.max( 1, Math.sqrt( width / 3 ) ),
							( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - ( 105 / 101 ) * thickness * width
						)
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[3].nodes[0].expandedTo[1].x + contours[2].nodes[1].expandedTo[1].x ) / 2
					y: 0
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[1].expand.width
						width: Math.min(
							contours[0].nodes[1].expand.width,
							( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - ( 105 / 101 ) * thickness * width
						)
						angle: 180 + 'deg'
						distr: Math.min( 1, ( 0.07 / 101 ) * thickness * opticThickness )
						dist: 0.07
					})
				1:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].y
					expand: Object({
						width: Math.min(
							thickness * Math.max( 1, Math.sqrt( width / 3 ) ),
							( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - ( 105 / 101 ) * thickness * width
						)
						angle: 180 + 'deg'
						distr: 0.75
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 370 + 200 * width - (25),
						# contours[0].nodes[0].expandedTo[1].x + (( 78 / 101 ) * thickness + 100) * 2
						contours[0].nodes[0].expandedTo[1].x + 0.75 * contours[3].nodes[0].expand.width + ( 50 / 101 ) * thickness
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * Math.max( 1, Math.sqrt( width / 3 ) )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].x
					y: 0
					expand: Object({
						width: Math.min(
							(( 91 / 101 ) * thickness) / Math.cos( Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].point ) + Math.PI / 2 ),
							( contours[3].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) - ( 105 / 101 ) * thickness * width
						)
						angle: 0 + 'deg'
						distr: Math.min( 1, ( 0.07 / 101 ) * thickness * opticThickness )
						dist: 0.07
					})
