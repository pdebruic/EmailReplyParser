testing
shouldBeHidden
	^ isQuoted or: [ isSignature or: [ self content trimBoth isEmpty ] ]