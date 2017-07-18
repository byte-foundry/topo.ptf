exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 84
		spacingRight: 50 * spacing + 84
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x - 139 * width
					y: contours[0].nodes[1].expandedTo[0].y + 10
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - ( 8 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: ( 86 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: ( contours[0].nodes[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 83 / 240 )
					y: Math.min(
						( 228 / 216 ) * descender,
						- thickness - 10
					)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 102 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (50/101) * thickness
					y: Math.min(
						contours[0].nodes[1].y + ( 100 / 101 ) * thickness + 64 * width,
						0
					)
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: ( 101.6 / 101 ) * thickness
						angle: 174 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[2].x
					y: xHeight
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'dot_accent'
			parentAnchors:
				0:
					x: contours[0].nodes[2].x
					y: xHeight + diacriticHeight
