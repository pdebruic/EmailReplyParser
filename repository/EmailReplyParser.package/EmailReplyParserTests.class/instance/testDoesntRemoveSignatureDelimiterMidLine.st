tests
testDoesntRemoveSignatureDelimiterMidLine
	reply := EmailReply readEmailBody: self emailSigDelimterInMiddleOfLine.
	self assert: reply fragments size equals: 1