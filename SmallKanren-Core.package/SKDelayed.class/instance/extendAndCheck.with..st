undelaying
extendAndCheck: aVar with: aValue
	"IF there is only 1 remaining delay constraint AND it is on aVar AND the continuation does NOT introduce new delays, THEN we can return the pure, undelayed state."

	"We can add to state something that creates a new state and extends sub/removes var from constraints simultaneously "
	
	<type: #isSKVar type: #AnyC returns: #SKStream>
	<todo>
	^ (state extendAndCheck: aVar with: aValue) suspendedVars: suspendedVars
	"^ (delayedVars remove: [ :v | v = aVar ])
		ifEmpty: [ state extendAndCheck: aVar with: aValue ]
		ifNotEmpty: [ :delayed | (state constraints at: aVar) checkAgainst: aValue in: (((state extend: aVar with: aValue) unconstrain: aVar) delay: delayed) ]"