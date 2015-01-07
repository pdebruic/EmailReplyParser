as yet unclassified
readEmailBody: anEmailBody
	| emailBody |
	emailBody := anEmailBody withLineEndings: String cr.
	(self multipleLineReplyHeaderRegex matchingRangesIn: emailBody)
		do: [ :eachRange | emailBody at: eachRange first put: $  ].
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
	self finishCurrentFragment