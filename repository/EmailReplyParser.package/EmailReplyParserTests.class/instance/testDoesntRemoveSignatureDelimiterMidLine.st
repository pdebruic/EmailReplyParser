tests
testDoesntRemoveSignatureDelimiterMidLine
	reply := EmailReplyParser readEmailBody: self emailSigDelimterInMiddleOfLine.
	self assert: reply fragments size equals: 1