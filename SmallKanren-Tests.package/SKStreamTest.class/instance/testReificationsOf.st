debugging
testReificationsOf
	| qs |
	qs := [ :a | a === 1 | (a === 2) ] asGoal runner 
		queriesInProgress.
	self assert: qs equals: (Bag with: 1 cons with: 2 cons)