tests
testIsPlainText
	self assert: (EmailReplyParser emailIsPlainText: EmailReplyParser wholeTextOnlyEmail lines).
	self assert: (EmailReplyParser emailIsPlainText: EmailReplyParser wholeMultipartEmail lines) not