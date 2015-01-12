as yet unclassified
fromWholeEmail: wholeEmail
	"Strip the headers by looking for the first blank line and discarding everything before it, then process the body."

	| emailLines |
	emailLines := self getBodyFromWholeEmail: wholeEmail.
	^ self new
		processWholeEmail;
		readEmailBody: emailLines