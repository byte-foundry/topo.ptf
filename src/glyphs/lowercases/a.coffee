exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 33
		spacingRight: 50 * spacing + 51
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
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 108,
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( 58 / 101 ) * thickness + 10
					)
					y: contours[0].nodes[1].expandedTo[0].y - 19
					dirOut: 165 + 'deg'
					expand: Object({
						width: ( 58 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 181 / 308 ) + (7)
					y: ( 324 / 526 ) * xHeight - (17)
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 74 / 101 ) * thickness
						angle: - 68 / 180 * Math.PI
						distr: 0.25
					})
				2:
					x: spacingLeft + (25/101) * thickness
					y: contours[0].nodes[3].y + ( (contours[0].nodes[1].y - 0.25 * (Math.cos( - Math.PI / 2 + contours[0].nodes[1].expand.angle) * contours[0].nodes[1].expand.width )) - contours[0].nodes[3].y ) * 0.5
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 99 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 151 / 308 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 83 / 101 ) * thickness
						angle: 75 + 'deg'
						distr: 0
					})
				4:
					x: contours[1].nodes[3].expandedTo[1].x
					y: Math.max(
						114,
						contours[0].nodes[3].expandedTo[1].y + 46
					)
					dirIn: - 125 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 52 / 101 ) * thickness
						angle: 132 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[0].x + 21
					y: 0
					dirOut: Utils.lineAngle( contours[1].nodes[5].expandedTo[1].point, contours[1].nodes[3].expandedTo[1].point )
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 91 / 101 ) * thickness,
							(contours[1].nodes[2].expandedTo[0].x + 21) - contours[1].nodes[1].x
						)
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[4].expandedTo[1].x ) * 0.7
					y: contours[0].nodes[4].expandedTo[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[1].x
						angle: 180 + 'deg'
						distr: 1
					})
				2:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 97 / 101 ) * thickness
						angle: 180 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[0].expandedTo[0].x + (32/101) * thickness
					y: xHeight - ( 172 / 526 ) * xHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 97 / 101 ) * thickness
						angle: 180 - 3 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[1].nodes[5].expandedTo[0].x + ( contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[5].expandedTo[0].x ) * ( 152 / 319 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: - 102 + 'deg'
						distr: 0
					})
				5:
					x: contours[0].nodes[2].expandedTo[0].x + 45
					y: xHeight - 20
					dirIn: 23 + 'deg'
					expand: Object({
						width: ( 98 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		# 2:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[1].nodes[0].expandedTo[0].x
		# 			y: contours[1].nodes[0].expandedTo[0].y
		# 			dirOut: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[2].expandedTo[0].point )
		# 		1:
		# 			x: contours[1].nodes[2].expandedTo[0].x
		# 			y: contours[1].nodes[2].expandedTo[0].y
		# 			dirIn: - 90 + 'deg'
		# 			typeOut: 'line'
		# 		2:
		# 			x: contours[1].nodes[0].expandedTo[1].x
		# 			y: contours[1].nodes[0].expandedTo[1].y
		# 			typeOut: 'line'
