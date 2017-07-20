exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 49
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
					x: contours[1].nodes[0].x + 5
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x + 123 + 200 * width
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 101 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].x - 3
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 89 / 101 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[0].expandedTo[1].y
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[2].expandedTo[0].point ]
					})
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[2].nodes[0].x - contours[0].nodes[0].expandedTo[0].x
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[1].y + Math.min( 40, ( 40 / 101 ) * thickness )
					typeOut: 'line'
					expand: Object({
						width: ( 84 / 101 ) * thickness / Math.sin( Math.PI - Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point ) )
						angle: 180 + 'deg'
						distr: 1
					})
				2:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].expandedTo[1].y - Math.min( 40, ( 40 / 101 ) * thickness )
					typeOut: 'line'
					expand: Object({
						width: ( 84 / 101 ) * thickness / Math.sin( Math.PI - Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point ) )
						angle: 180 + 'deg'
						distr: 0
					})
				3:
					x: Utils.onLine({
						y: contours[1].nodes[1].expandedTo[1].y
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[2].expandedTo[1].point ]
					})
					y: contours[1].nodes[1].expandedTo[1].y
					expand: Object({
						width: contours[1].nodes[1].expandedTo[1].x - contours[2].nodes[3].x
						angle: 180 + 'deg'
						distr: 1
					})
