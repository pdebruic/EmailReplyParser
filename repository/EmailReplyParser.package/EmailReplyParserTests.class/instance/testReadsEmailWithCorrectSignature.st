tests
testReadsEmailWithCorrectSignature
	reply := EmailReplyParser readEmailBody: self emailCorrectSignature.
	self assert: reply fragments size equals: 2.
	self assert: #(false false) equals: (reply fragments collect: [ :ea | ea isQuoted ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.
	self assert: reply fragments second content equals: '--' , String lf , 'rick'