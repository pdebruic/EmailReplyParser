assert-helpers
assertString: replyString matchesRegex: regexString
	self assert: (replyString matchesRegex: regexString)