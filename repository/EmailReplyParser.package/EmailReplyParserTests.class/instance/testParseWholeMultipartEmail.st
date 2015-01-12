tests
testParseWholeMultipartEmail
	self
		assert: (EmailReplyParser replyFromWholeEmail: EmailReplyParser wholeMultipartEmail)
		equals:
			(String lf
				join:
					#('##- Please type your reply above this line -##' '' 'Thanks for contacting Mandrill Support: Ticket 78906 created (Is there an=' 'y way to prevent you from stripping line endings from inbound emails?)' '' '<strong>We''ve received your request.</strong>' 'Your ticket number is 78906.' '' '' 'If you have a Mandrill account, <em>please ensure your username was inclu=' 'ded </em> along with <strong>detailed information</strong> about your req=' 'uest so we can respond as quickly as possible.' '' '' 'You can add additional comments by replying to this email.' '' 'In the meantime, search for common questions in our <a href=3D"http://hel=' 'p.mandrill.com">Knowledge Base</a>, check Mandrill''s <a href=3D"http://st=' 'atus.mandrillapp.com">server status</a>, or review our <a href=3D"https:/=' '/mandrillapp.com/docs/">documentation</a>.'))