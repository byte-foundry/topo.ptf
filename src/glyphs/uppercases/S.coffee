exports.glyphs['S'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 31
		spacingRight: 50 * spacing + 54
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
					y: 18 + (10)
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].expandedTo[0].point ) - 10 / 180 * Math.PI
					expand: Object({
						width: ( 102 / 101 ) * thickness * opticThickness # * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0.1
					})
				1:
					x: ( contours[0].nodes[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 138 / 313 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 92 / 101 ) * thickness * opticThickness # * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].x + ( 135 + Math.max( 40, ( 40 / 80 ) * thickness * opticThickness ) ) + 200 * width - (25)
					y: ( 190 / 706 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.4
					expand: Object({
						width: ( 110 / 101 ) * thickness * opticThickness
						# angle: 180 + 25 - 25 * contrast + 'deg'
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: ( contours[0].nodes[2].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x ) * 0.5
					y: ( contours[0].nodes[2].expandedTo[0].y + contours[0].nodes[4].expandedTo[1].y ) * 0.5
					dirOut: Math.min(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point ) + 25 * width / 180 * Math.PI,
						177 / 180 * Math.PI
					)
					type: 'smooth'
					expand: Object({
						width: ( 103 / 101 ) * thickness * opticThickness
						angle: contours[0].nodes[3].dirOut + 70 / 180 * Math.PI
						distr: 0.5
					})
				4:
					x: spacingLeft + (25)
					y: capHeight - ( 160 / 706 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.4
					expand: Object({
						width: ( 105 / 101 ) * thickness * opticThickness
						# angle: 180 + 25 - 25 * contrast + 'deg'
						angle: 178 + 'deg'
						distr: 0.75
					})
				5:
					x: ( contours[0].nodes[4].expandedTo[1].x + contours[0].nodes[6].expandedTo[1].x ) * ( 187 / 303 )
					y: capHeight + ( 15 / 10 ) * overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 87 / 101 ) * thickness * opticThickness # * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[0].x - 29
					y: capHeight - 8 - (9)
					dirIn: Utils.lineAngle( contours[0].nodes[6].expandedTo[0].point, contours[0].nodes[5].expandedTo[0].point ) - 10 / 180 * Math.PI
					type: 'smooth'
					expand: Object({
						width: ( 95 / 101 ) * thickness * opticThickness # * contrast * contrastExtremity
						angle: 180 - 90 + 'deg'
						distr: 0.9
					})
