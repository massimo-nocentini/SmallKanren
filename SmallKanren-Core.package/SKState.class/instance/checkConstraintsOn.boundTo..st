constraining
checkConstraintsOn: aVar boundTo: aValue
	"Runs when aVar is unified with aValue, to check constraints. Fires the constraint to perform any necessary modifications, then removes the constraint, since after it has fired we no longer need to track it."
	<todo>
	"Unconstrain is unnecessary if return is empty, but we cant put it outside entire constraint check bc constraint may return mplus and other streams from delayed constraints."
	^ constraints checkConstraintsOn: aVar against: aValue in: (self unconstrain: aVar)