tests
testRetainsBullets
	reply := EmailReplyParser readEmailBody: self emailBullets.
	self
		assert: reply visibleText
		equals:
			'test 2 this should list second' , String lf , String lf , 'and have spaces' , String lf , String lf
				, 'and retain this formatting' , String lf , String lf , String lf , '   - how about bullets' , String lf
				, '   - and another'