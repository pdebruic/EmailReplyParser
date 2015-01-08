tests
testRetainsBullets
	reply := EmailReply readEmailBody: self emailBullets.
	self
		assert: reply visibleText
		equals:
			'test 2 this should list second

and have spaces

and retain this formatting


   - how about bullets
   - and another'