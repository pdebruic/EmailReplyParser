as yet unclassified
scanLine: eachLine
	| line isQuoted |
	line := eachLine withoutTrailingNewlines.
	(self signatureRegex matches: line)
		ifFalse: [ line := line trimBoth ].
	isQuoted := self quotedLineRegex matches: line.
	(currentFragment notNil and: [ line isEmpty and: [ self signatureRegex matches: currentFragment lines last ] ])
		ifTrue: [ 
			currentFragment isSignature: true.
			self finishCurrentFragment ].
	(currentFragment notNil
		and: [ 
			currentFragment isQuoted = isQuoted
				or: [ (currentFragment isQuoted and: [ self quoteHeaderRegex matches: line ]) or: [ line isEmpty ] ] ])
		ifTrue: [ currentFragment addLine: line ]
		ifFalse: [ 
			self finishCurrentFragment.
			currentFragment := EmailReplyFragment isQuoted: isQuoted forLine: line ]