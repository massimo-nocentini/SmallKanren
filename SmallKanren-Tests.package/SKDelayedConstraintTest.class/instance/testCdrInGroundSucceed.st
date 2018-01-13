cdrIn
testCdrInGroundSucceed
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := (x car: 1 CdrIn: [ :d | SKGoal succeed ]) & (x === (1 cons)).
	s := g run: SKState new.
	self deny: s isDelayed.
	self assert: s => x equals: 1 cons