tests
testDealsWithWindowsLineEndings
	reply := EmailReplyParser readEmailBody: self email17.
	self assert: reply fragments size equals: 2.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false false) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assertFragment: reply fragments first matchesRegex: '^\:\+1\:'.
	self assertFragment: reply fragments second matchesRegex: '^\sOn.*'.
	self assertFragment: reply fragments second matchesRegex: '.*Steps 0-2.*'