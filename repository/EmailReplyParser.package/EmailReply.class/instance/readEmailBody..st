as yet unclassified
readEmailBody: anEmailBody
	| emailBody |
	emailBody := anEmailBody withLineEndings: String lf.
	self fixMultipleReplyHeaderLinesIn: emailBody.
	emailBody := self underscoreLineRegex
		copy: emailBody
		translatingMatchesUsing: [ :matchedString | 
			String
				streamContents: [ :s | 
					s
						nextPut: Character cr;
						nextPut: Character cr;
						nextPutAll: matchedString ] ].
	foundVisible := false.
	currentFragment := nil.
	emailBody reverse linesDo: [ :eachLine | self scanLine: eachLine ].
	self finishCurrentFragment.
	fragments := fragments reverse