tests
testComplexBodyWithOnlyOneFragment
	reply := EmailReply readEmailBody: self email15.
	self assert: reply fragments size equals: 1