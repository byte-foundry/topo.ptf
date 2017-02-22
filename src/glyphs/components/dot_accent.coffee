exports.glyphs['dot_accent'] =
	glyphName: 'dotaccent'
	characterName: 'DOT ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			# optical: if typeof parentAnchors[0].optical != 'undefined' then parentAnchors[0].optical else 100
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					tensionIn: 1.1
				1:
					x: anchors[0].x - ( 149 / 101) * thickness / 2
					y: anchors[0].y + ( 128 / 101) * thickness / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					tensionIn: 1.1
				2:
					x: anchors[0].x
					y: anchors[0].y + ( 128 / 101) * thickness
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					tensionIn: 1.1
				3:
					x: anchors[0].x + ( 149 / 101) * thickness / 2
					y: contours[0].nodes[1].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					tensionIn: 1.1
