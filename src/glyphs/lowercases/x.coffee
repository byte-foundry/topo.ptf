exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10
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
					x: spacingLeft + (27)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2 ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[1].expandedTo[0].x ) / 2
					y: xHeight / 2
					expand: Object({
						width: ( 88 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						angle: 0 + 'deg'
						distr: ( 60 / 88 )
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[1].nodes[1].expandedTo[0].x ) / 2
					y: xHeight / 2
					typeOut: 'line'
					expand: Object({
						width: ( 93 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						angle: 180 + 'deg'
						distr: ( 54 / 93 )
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 209 + 200 * width - (27),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 109 / 101 ) * thickness + 50
					)
					y: 0
					expand: Object({
						width: ( 110 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2 ) )
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + 4
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2 ) )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 86 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						angle: 0 + 'deg'
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 89 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2.5 ) )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[1].expandedTo[0].x - 5
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 101 ) * thickness * Math.max( 1, Math.sqrt( width / 2 ) )
						angle: 180 + 'deg'
						distr: 0
					})
