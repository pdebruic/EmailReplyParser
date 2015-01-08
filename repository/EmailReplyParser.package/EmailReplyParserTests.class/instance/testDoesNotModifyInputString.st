tests
testDoesNotModifyInputString
	| str |
	str := 'The Quick Brown Fox Jumps Over The Lazy Dog'.
	reply := EmailReply readEmailBody: str.
	self assert: reply visibleText equals: str