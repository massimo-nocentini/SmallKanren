consumer
testTabledMplus
	| r |
	r := [[ :a :b | a === 1 & (b === 2) & ((self path: a to: b) | (self path: a to: b)) ] ]
		asGoal runner.
	r tables
		at: #path
		put:
			(Dictionary
				with: #(1 2) asConsTree -> #(#(1 2) #(1 2) #(1 2)) asConsTree).
	self assert: r run size equals: 6