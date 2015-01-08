tests
testParseOutSentFromMultiwordMobileDevice
	reply := EmailReply readEmailBody: self emailMultiWordMobileDevice.
	self assert: reply visibleText equals: 'Here is another email'