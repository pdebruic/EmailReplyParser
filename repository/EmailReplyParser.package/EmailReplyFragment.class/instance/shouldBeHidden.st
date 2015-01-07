testing
shouldBeHidden
	^ isQuoted or: [ isSignature or: [ self lines allSatisfy: [ :each | each trimBoth isEmpty ] ] ]