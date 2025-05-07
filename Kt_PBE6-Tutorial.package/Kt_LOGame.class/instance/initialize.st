initialization
initialize

	" "

	| sampleCell width height n |
	super initialize.
	n := self cellsPerSide.

	sampleCell := Kt_LOCell new.
	width := sampleCell width.
	height := sampleCell height.
	self bounds:
		(50 @ 50 extent: (width * n) @ (height * n) + (2 + self borderWidth)).

	cells := Array2D new: n tabulate: [ :i :j | self newCellAt: i at: j ].