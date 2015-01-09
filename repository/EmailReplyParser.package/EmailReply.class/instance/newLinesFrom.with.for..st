as yet unclassified
newLinesFrom: lines with: linesToCat for: emailBody
	| fixed rejects keepers newLines |
	rejects := OrderedCollection new.
	keepers := OrderedCollection new.
	fixed := linesToCat
		collect: [ :assoc | 
			| onLine wroteLine |
			onLine := assoc key.
			keepers add: onLine.
			wroteLine := assoc value.
			String
				streamContents: [ :s | 
					onLine to: wroteLine do: [ :ind | 
						s nextPutAll: (lines at: ind).
						ind < wroteLine
							ifTrue: [ s nextPut: $  ].
						ind = onLine
							ifFalse: [ rejects add: ind ] ] ] ].
	fixed doWithIndex: [ :eaLine :ind | lines at: (keepers at: ind) put: eaLine ].
	newLines := OrderedCollection new.
	lines
		doWithIndex: [ :eaLine :ind | 
			(rejects includes: ind)
				ifFalse: [ newLines add: eaLine ] ].
	^ newLines