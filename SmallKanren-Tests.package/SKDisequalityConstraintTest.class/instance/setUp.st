running
setUp
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new tag: #z.
	w := SKVar new tag: #w.
	one := SKVar tag: #one.
	two := SKVar tag: #two.
	xhash := x hash asString copyFrom: 1 to: 4.
	yhash := y hash asString copyFrom: 1 to: 4