tests
testDoNotParseOutSentFromInNormalSentance
	reply := EmailReplyParser readEmailBody: self emailSentFromMyNotSignature.
	self
		assert: reply visibleText
		equals: 'Here is another email' , String lf , String lf , 'Sent from my desk, is much easier then my mobile phone.'