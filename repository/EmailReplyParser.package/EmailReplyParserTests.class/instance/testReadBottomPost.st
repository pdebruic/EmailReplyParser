tests
testReadBottomPost
	reply := EmailReplyParser readEmailBody: self email12.
	self assert: reply fragments size equals: 6.
	self assert: #(false true false true false false) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false false false false false true) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false false false true true true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assert: reply fragments first content equals: 'Hi,'.
	self assertFragment: reply fragments second matchesRegex: '^On.*'.
	self assertFragment: reply fragments third matchesRegex: '^\sYou can list.*'.
	self assertFragment: reply fragments fourth matchesRegex: '^\s> .*'.
	self assertFragment: reply fragments sixth matchesRegex: '^_.*'