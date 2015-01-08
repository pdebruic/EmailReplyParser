tests
testRecognizeDateStringAboveQuote
	reply := EmailReply readEmailBody: self email14.
	self assert: reply fragments size equals: 2.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false false) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assertFragment: reply fragments first matchesRegex: '^Awesome.*'.
	self assertFragment: reply fragments second matchesRegex: '^On .*'.
	self assertFragment: reply fragments second matchesRegex: '.*Loader.*'