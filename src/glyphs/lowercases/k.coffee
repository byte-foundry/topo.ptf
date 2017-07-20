exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 82
		spacingRight: 50 * spacing - 18
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
					x: spacingLeft + (25/101) * thickness
					y: ascenderHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 184 + 200 * width - (28),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 109 / 101 ) * thickness + 10
					)
					y: 0
					typeOut: 'line'
					expand: Object({
						# width: - ( 92 / 101 ) * thickness / Math.sin( Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, { x: contours[1].nodes[0].x - 0.75 * thickness, y: 0 } ) )
						width: ( 109 / 101 ) * thickness * Math.max( 1, Math.sqrt( width ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x - ( 8 / 101 ) * thickness
					y: ( 284 / 526 ) * xHeight
					expand: Object({
						width: ( 95 / 101 ) * thickness
						angle: Math.PI + Utils.lineAngle( contours[1].nodes[1].point, contours[2].nodes[1].expandedTo[0].point )
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y + Math.min( 10, ( 10 / 101 ) * thickness )
					typeOut: 'line'
					expand: Object({
						width: ( 97 / 101 ) * thickness
						angle: 180 - 24 + 'deg'
						distr: 1
					})
				1:
					x: Math.max(
						contours[1].nodes[0].x - (29),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 113 / 101 ) * thickness + 10
					)
					y: xHeight
					expand: Object({
						width: ( 113 / 101 ) * thickness * Math.max( 1, Math.sqrt( width ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
