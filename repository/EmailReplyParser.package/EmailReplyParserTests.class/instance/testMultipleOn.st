tests
testMultipleOn
	reply := EmailReplyParser readEmailBody: self emailGreedyOn.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false false) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assertFragment: reply fragments first matchesRegex: '^On your remote host.*'.
	self assertFragment: reply fragments second matchesRegex: '^\sOn 9 Jan 2014.*'