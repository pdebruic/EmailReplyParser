tests
testDealsWithMultiLineReplyHeaders
	reply := EmailReply readEmailBody: self email16.
	self assert: reply fragments size equals: 2.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false false) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assertFragment: reply fragments first matchesRegex: '^I get.*'.
	self assertFragment: reply fragments second matchesRegex: '^\sOn.*'.
	self assertFragment: reply fragments second matchesRegex: '.*Was this.*'