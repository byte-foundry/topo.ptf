exports.glyphs['q'] =
	unicode: 'q'
	glyphName: 'q'
	characterName: 'LATIN SMALL LETTER Q'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 56
		spacingRight: 50 * spacing + 58
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
					x: contours[1].nodes[2].expandedTo[1].x
					y: Math.min(
						xHeight - ( 104 / 526 ) * xHeight,
						contours[0].nodes[1].y - Math.sin( - contours[0].nodes[1].expand.angle ) * contours[0].nodes[1].expand.width - 32
					)
					dirOut: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ) - 25 / 180 * Math.PI
					type: 'smooth'
					expand: Object({
						width: ( 66 / 101 ) * thickness
						angle: 180 + 60 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 173 / 331 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.12
					tensionIn: 1.1
					expand: Object({
						width: ( 87 / 101 ) * thickness
						angle: - 75 / 180 * Math.PI
						distr: 0
					})
				2:
					x: spacingLeft + (26/101) * thickness
					y: - overshoot + ( (xHeight + overshoot) + overshoot ) * ( 307 / 550 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 103 / 101 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 176 / 357 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.14
					tensionOut: 1.25
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 77 / 180 * Math.PI
						distr: 0
					})
				4:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					dirIn: Math.max(
						- 130 / 180 * Math.PI,
						Utils.lineAngle( contours[0].nodes[4].expandedTo[0].point, contours[0].nodes[3].expandedTo[0].point ) + 18 / 180 * Math.PI
					)
					expand: Object({
						width: ( 66 / 101 ) * thickness
						angle: 180 - 30 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: descender
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: ( 101 / 101 ) * thickness
						angle: - 180 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 201 + 200 * width - (25),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max(
						126,
						(contours[0].nodes[3].y + Math.sin( contours[0].nodes[3].expand.angle ) * contours[0].nodes[3].expand.width) + 55
					)
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[1].nodes[1].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: Utils.onLine({
						y: contours[0].nodes[0].expandedTo[0].y
						on: [ contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[4].expandedTo[0].point ]
					})
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[3].x - contours[0].nodes[0].expandedTo[0].x
						angle: 180 + 'deg'
						distr: 0
					})
				4:
					x: contours[1].nodes[2].expandedTo[0].x + 24
					y: xHeight
					expand: Object({
						width: Math.min(
							( 90 / 101 ) * thickness,
							(contours[1].nodes[2].expandedTo[0].x + 24) - contours[0].nodes[0].expandedTo[0].x
						)
						angle: 180 + 'deg'
						distr: 0
					})
