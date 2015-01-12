as yet unclassified
fixQuotedLinesSplitByEqualsSignsFrom: lines
	| newLines inQuote |
	newLines := OrderedCollection new.
	inQuote := false.
	lines
		do: [ :eachLine | 
			(inQuote and: [ newLines notEmpty and: [ newLines last last = $= ] ])
				ifTrue: [ 
					| replacementLine |
					replacementLine := eachLine first = $&
						ifTrue: [ newLines last allButLast , eachLine allButFirst ]
						ifFalse: [ newLines last allButLast , eachLine ].
					newLines at: newLines size put: replacementLine ]
				ifFalse: [ 
					inQuote := eachLine notEmpty and: [ eachLine first = $> ].
					newLines add: eachLine ] ].
	^ newLines