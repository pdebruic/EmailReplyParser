as yet unclassified
readEmailBody: someEmailLines
	| emailBody emailLines |
	emailLines := self fixMultipleReplyHeaderLinesIn: someEmailLines.
	processingWholeEmail
		ifTrue: [ emailLines := self fixQuotedLinesSplitByEqualsSignsFrom: emailLines ].
	emailBody := self fixUnderscoreReplyLinesIn: emailLines.
	foundVisible := false.
	currentFragment := nil.
	emailBody reverse linesDo: [ :eachLine | self scanLine: eachLine ].
	self finishCurrentFragment.
	fragments := fragments reverse