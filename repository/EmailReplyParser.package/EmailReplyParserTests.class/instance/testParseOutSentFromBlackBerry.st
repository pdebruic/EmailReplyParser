tests
testParseOutSentFromBlackBerry
	reply := EmailReply readEmailBody: self emailBlackberry.
	self assert: reply visibleText equals: 'Here is another email'