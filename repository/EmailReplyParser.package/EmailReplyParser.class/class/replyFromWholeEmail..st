as yet unclassified
replyFromWholeEmail: wholeEmail
	"Strip the headers by looking for the first blank line, then process the body."

	^ (self fromWholeEmail: wholeEmail) visibleText