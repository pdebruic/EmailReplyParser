as yet unclassified
fixUnderscoreReplyLinesIn: someLines
	| newLines |
	newLines := OrderedCollection new.
	someLines
		doWithIndex: [ :eachLine :ind | 
			(self underscoreLineRegex matches: eachLine)
				ifTrue: [ 
					(ind > 2 and: [ (someLines at: ind - 2) ~= '' ])
						ifTrue: [ newLines add: String new ].
					(someLines at: ind - 1) = ''
						ifFalse: [ newLines add: String new ] ].
			newLines add: eachLine ].
	^ String lf join: newLines