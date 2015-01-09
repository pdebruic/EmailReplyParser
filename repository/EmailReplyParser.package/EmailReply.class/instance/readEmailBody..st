as yet unclassified
readEmailBody: anEmailBody
	| emailBody emailLines |
	emailBody := anEmailBody withLineEndings: String lf.
	emailLines := self fixMultipleReplyHeaderLinesIn: emailBody.
	emailBody := self fixUnderscoreReplyLinesIn: emailLines.
	foundVisible := false.
	currentFragment := nil.
	emailBody reverse linesDo: [ :eachLine | self scanLine: eachLine ].
	self finishCurrentFragment.
	fragments := fragments reverse