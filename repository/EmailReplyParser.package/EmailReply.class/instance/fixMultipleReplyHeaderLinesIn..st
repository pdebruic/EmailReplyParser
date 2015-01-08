as yet unclassified
fixMultipleReplyHeaderLinesIn: emailBody
	| lines ons wrotes |
	lines := emailBody lines.
	ons := OrderedCollection new.
	wrotes := OrderedCollection new.
	lines
		doWithIndex: [ :each :ind | 
			| onFound |
			onFound := false.
			(each copyFrom: 1 to: 3) = 'On '
				ifTrue: [ 
					ons add: ind.
					onFound := true ].
			((each copyFrom: each size - 6 to: each size - 1 = 'wrote:') and: [ onFound not ])
				ifTrue: [ wrotes add: ind ] ].
	(ons notEmpty and: [ wrotes notEmpty ])
		ifTrue: [ wrotes do: [ :each |  ] ]