tests
testParseOutSentFromMyIPhone
	reply := EmailReplyParser readEmailBody: self emailIPhone.
	self assert: reply visibleText equals: 'Here is another email'