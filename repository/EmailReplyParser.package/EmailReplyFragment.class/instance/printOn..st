testing
printOn: stream
	super printOn: stream.
	isQuoted
		ifTrue: [ stream nextPutAll: ' quoted ' ].
	isSignature
		ifTrue: [ stream nextPutAll: ' signature ' ].
	stream
		nextPut: $ ;
		nextPutAll: self content