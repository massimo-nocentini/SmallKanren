initialization
setUp
	(RPackageOrganizer default packageNamed: 'SmallKanren-Core') enforceContractC.
	x := SKVar new tag: #x.
	y := SKVar new tag: #y.
	z := SKVar new tag: #z.
	xhash := x hash asString copyFrom: 1 to: 4.
	yhash := y hash asString copyFrom: 1 to: 4