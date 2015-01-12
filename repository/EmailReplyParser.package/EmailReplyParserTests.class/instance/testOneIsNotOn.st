tests
testOneIsNotOn
	reply := EmailReplyParser readEmailBody: self emailOneIsNotOn.
	self assertFragment: reply fragments first matchesRegex: '.*One outstanding question.*'.
	self assertFragment: reply fragments second matchesRegex: '^\sOn Oct 1, 2012.*'