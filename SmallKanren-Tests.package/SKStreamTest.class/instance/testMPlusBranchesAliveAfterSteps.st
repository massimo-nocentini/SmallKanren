debugging
testMPlusBranchesAliveAfterSteps
	| s |
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal fail ]) | (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runner .
	self assert: (s stream isKindOf: SKMPlus).
	self assert: ((s branchesAliveAfterSteps: 1) stream isKindOf: SKDelayed).
	self assert: (s branchesAliveAfterSteps: 10) stream isEmptyStream