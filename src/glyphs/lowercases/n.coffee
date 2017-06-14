exports.glyphs['n'] =
	unicode: 'n'
	glyphName: 'n'
	characterName: 'LATIN SMALL LETTER N'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 58 + (20)
		spacingRight: 50 * spacing + 75
	tags: [
		'all',
		'latin',
		'lowercase'
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
					x: spacingLeft + (25/101) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 349 / 517 ) * xHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x - ( 20 / 101 ) * thickness
					y: xHeight
					dirIn: Math.max(
						- 80 / 180 * Math.PI,
						Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					)
					expand: Object({
						width: ( 90 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 180 + 200 * width - (28),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( contours[1].nodes[1].expand.width * Math.sin( contours[1].nodes[1].expand.angle - Math.PI - Math.PI / 2)) + 10
					)
					y: Math.min(
						xHeight - ( 154 / 517 ) * xHeight + (6),
						contours[1].nodes[2].y - Math.cos( contours[1].nodes[2].expand.angle - Math.PI / 2 ) * contours[1].nodes[2].expand.width - ( 30 / 101 ) * thickness + 30
					)
					type: 'smooth'
					expand: Object({
						width: ( 103 / 101 ) * thickness
						angle: 180 - 168 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[3].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[1].x - contours[1].nodes[3].expandedTo[1].x ) * ( 184 / 321 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.37
					tensionOut: 1.1
					expand: Object({
						width: ( 91 / 101 ) * thickness
						# TODO: angle defined by width
						angle: ( 180 - 110 ) / 180 * Math.PI
						distr: 1
					})
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.max(
						Math.min(
							xHeight - ( 160 * width / 517 ) * xHeight + 30,
							xHeight - ( 100 / 517 ) * xHeight
						),
						contours[1].nodes[4].y + 30
					)
					dirIn: Math.min(
						contours[1].nodes[3].expand.angle + ( 90 + 25 ) / 180 * Math.PI,
						Utils.lineAngle( contours[1].nodes[3].expandedTo[1].point, contours[1].nodes[2].expandedTo[1].point ) + 30 / 180 * Math.PI
					)
					typeIn: 0.5
					typeOut: 'line'
					expand: Object({
						width: ( ( 49 + Math.min( 9 * width, 9 ) ) / 101 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point )
						distr: 0
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					expand: Object({
						width: contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[3].expandedTo[1].x
						angle: 180 + 'deg'
						distr: 0
					})
	# components:
	# 		0:
	# 			base: ['serif-vertical', 'none']
	# 			id: 'bottomleft'
	# 			parentAnchors:
	# 				0:
	# 					base: contours[1].nodes[0].expandedTo[0].point
	# 					noneAnchor: contours[1].nodes[0].expandedTo[0].point
	# 					opposite: contours[1].nodes[0].expandedTo[1].point
	# 			parentParameters:
	# 				serifMedian: 0.1
	# 				serifWidth: serifWidth + 10
	# 				serifHeight: 150
	# 		1:
	# 			base: ['serif-vertical', 'none']
	# 			id: 'bottomright'
	# 			parentAnchors:
	# 				0:
	# 					base: contours[1].nodes[0].expandedTo[1].point
	# 					noneAnchor: contours[1].nodes[0].expandedTo[1].point
	# 					opposite: contours[1].nodes[0].expandedTo[0].point
	# 					reversed: true
	# 			transformOrigin: contours[1].nodes[0].expandedTo[1].point
	# 			transforms: Array(
	# 				[ 'scaleX', -1 ]
	# 			)
	# 			parentParameters:
	# 				serifMedian: 0.1
	# 				serifWidth: serifWidth + 30
	# 				serifHeight: 80
