tests
testMultipleOn
	reply := EmailReply readEmailBody: self emailGreedyOn.
	self assert: #(false true false) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false false false) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assertFragment: reply fragments first matchesRegex: '^On your remote host.*'.
	self assertFragment: reply fragments second matchesRegex: '^\sOn 9 Jan 2014.*'