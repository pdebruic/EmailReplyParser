tests
testParseOutJustTopForOutlookReply
	|   |
	reply := EmailReply readEmailBody: self email21.
	self assert: reply visibleText equals: 'Outlook with a reply'