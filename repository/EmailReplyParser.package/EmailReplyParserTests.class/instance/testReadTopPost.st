tests
testReadTopPost
	reply := EmailReplyParser readEmailBody: self email13.
	self assert: reply fragments size equals: 5.
	self assert: #(false false true false false) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false true false false true) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true true true true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assertFragment: reply fragments first matchesRegex: '^Oh thanks.\s\sHaving.*'.
	self assertFragment: reply fragments second matchesRegex: '^-A.*'.
	self assertFragment: reply fragments third matchesRegex: '^\sOn.*'.
	self assertFragment: reply fragments fifth matchesRegex: '^_.*'