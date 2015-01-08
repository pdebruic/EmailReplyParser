tests
testParseOutSentFromMyIPhone
	reply := EmailReply readEmailBody: self emailIPhone.
	self assert: reply visibleText equals: 'Here is another email'