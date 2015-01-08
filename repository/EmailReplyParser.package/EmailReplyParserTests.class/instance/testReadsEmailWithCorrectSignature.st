tests
testReadsEmailWithCorrectSignature
	reply := EmailReply readEmailBody: self emailCorrectSignature.
	self assert: reply fragments size equals: 2.
	self assert: #(false false) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assertFragment: reply fragments second matchesRegex: '^-- \srick.*'