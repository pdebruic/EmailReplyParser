tests
testParseOutSentFromMultiwordMobileDevice
	reply := EmailReplyParser readEmailBody: self emailMultiWordMobileDevice.
	self assert: reply visibleText equals: 'Here is another email'