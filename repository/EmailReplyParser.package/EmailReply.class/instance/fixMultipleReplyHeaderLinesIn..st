as yet unclassified
fixMultipleReplyHeaderLinesIn: emailBody
	| lines ons wrotes linesToCat |
	lines := emailBody lines.
	ons := OrderedCollection new.
	wrotes := OrderedCollection new.
	lines
		doWithIndex: [ :each :ind | 
			each size >= 6
				ifTrue: [ 
					| onFound |
					onFound := false.
					(each copyFrom: 1 to: 3) = 'On '
						ifTrue: [ 
							ons add: ind.
							onFound := true ].
					((each endsWith: 'wrote:') and: [ onFound not ])
						ifTrue: [ wrotes add: ind ] ] ].
	linesToCat := OrderedCollection new.
	(ons notEmpty and: [ wrotes notEmpty ])
		ifTrue: [ 
			wrotes
				do: [ :wroteLineNum | 
					ons
						do: [ :onLineNum | 
							(wroteLineNum > onLineNum and: [ wroteLineNum - onLineNum < 3 ])
								ifTrue: [ linesToCat add: onLineNum -> wroteLineNum ] ] ] ].
	^ self newLinesFrom: lines with: linesToCat for: emailBody