constructing
testConstructDisjoinedFree
	| c |
	c := (x =/= w run: (x =/= z run: SKState new)) constraints at: x.
	self assert: c isDisjoinedDisequality.
	self assert: c first left equals: x.
	self assert: c first right equals: w.
	self assert: c next left equals: x.
	self assert: c next right equals: z