tests
testDoesNotModifyInputString
	| str |
	str := 'The Quick Brown Fox Jumps Over The Lazy Dog'.
	reply := EmailReplyParser readEmailBody: str.
	self assert: reply visibleText equals: str