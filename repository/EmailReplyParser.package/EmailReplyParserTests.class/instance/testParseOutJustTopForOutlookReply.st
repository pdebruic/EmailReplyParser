tests
testParseOutJustTopForOutlookReply
	|   |
	reply := EmailReplyParser readEmailBody: self email21.
	self assert: reply visibleText equals: 'Outlook with a reply'