exports.glyphs['J'] =
	unicode: 'J'
	glyphName: 'J'
	characterName: 'LATIN CAPITAL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 24
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
					x: spacingLeft
					y: 20
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - ( 12 / 180 * Math.PI )
					expand: Object({
						width: ( 97 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: ( contours[0].nodes[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 126 / 329 ) + (10)
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 88 / 101 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].x + 129 + 200 * width - (26)
					y: ( 222 / 706 ) * capHeight
					typeOut: 'line'
					tensionIn: 1.2
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: capHeight
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1].point
					noneAnchor: contours[0].nodes[3].expandedTo[1].point
					opposite: contours[0].nodes[3].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[3].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.max( 159 * width, serifWidth )
