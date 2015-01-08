tests
testDoNotParseOutSentFromInNormalSentance
	reply := EmailReply readEmailBody: self emailSentFromMyNotSignature.
	self
		assert: reply visibleText
		equals:
			'Here is another email
	
	Sent from my desk, is much easier then my mobile phone.'