tests
testParseWholePlainTextEmail
	self
		assert: (EmailReplyParser replyFromWholeEmail: EmailReplyParser wholeTextOnlyEmail)
		equals:
			'So the formatting needs help' , String lf , String lf , String lf , String lf , 'What are you gonna do about that?'