running
sync
	[ stream isIncomplete ] whileTrue: [ stream := stream step: model ].