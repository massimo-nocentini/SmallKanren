running
runner
"As the top level goal, we forego making a stream and execute the top level goal directly, saving the fresh variables as the query variables for the entire computaiton."
	| queryVars |
	queryVars := block argumentNames collect: [ :a | SKVar tag: a ].
	^ SKRunner new
		queryVars: queryVars asCons;
		goal: (block valueWithArguments: queryVars) asGoal