tests
testPathologicalEmails
	"| st |
	st := DateAndTime now.
	reply := EmailReply readEmailBody: self emailPathological.
	self assert: DateAndTime now - st < 1 seconds"