tests
testParseOutSentFromBlackBerry
	reply := EmailReplyParser readEmailBody: self emailBlackberry.
	self assert: reply visibleText equals: 'Here is another email'