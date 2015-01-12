tests
testParseOutJustTopForOutlookReplyDirectlyAboveLine
	reply := EmailReplyParser readEmailBody: self email22.
	self assert: reply visibleText equals: 'Outlook with a reply directly above line'