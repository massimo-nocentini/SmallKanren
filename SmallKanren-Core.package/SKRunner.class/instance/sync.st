running
sync
	[ stream isIncomplete ] whileTrue: [ stream := stream firstStep: self ].