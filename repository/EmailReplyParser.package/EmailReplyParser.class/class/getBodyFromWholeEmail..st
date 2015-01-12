as yet unclassified
getBodyFromWholeEmail: wholeEmail
	| lines |
	lines := wholeEmail lines.
	^ (self emailIsPlainText: lines)
		ifTrue: [ 
			| idx |
			idx := lines indexOf: ''.
			lines copyFrom: idx + 1 to: lines size ]
		ifFalse: [ self plainTextLinesFromMultipartEmail: lines ]