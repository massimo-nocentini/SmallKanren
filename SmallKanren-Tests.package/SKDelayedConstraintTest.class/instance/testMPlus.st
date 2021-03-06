tests
testMPlus
	"Delayed goals can return mplusses"
	| g |
	g := (y carCdrIn: [ :a :d | a === 3 & d isEmptyo ]) & (x carCdrIn: [ :a :d | a === 1 | (a === 2) ]) & (x carCdrIn: [ :a :d | d isEmptyo ]).
	self assert: g step isDelayed.
	self assert: (g step constraints at: y) isDelayedGoalConstraint.
	self assert: (g step constraints at: x) isConjoinedDelay.
	self assert: (g step force: x) isDelayedPlus.
	self assert: ((g step force: x) left constraints at: y) isDelayedGoalConstraint.
	self assert: ((g step force: x) right constraints at: y) isDelayedGoalConstraint