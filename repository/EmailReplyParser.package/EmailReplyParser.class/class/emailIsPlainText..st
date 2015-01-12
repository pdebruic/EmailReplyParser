as yet unclassified
emailIsPlainText: lines
	lines
		do: [ :each | 
			('Content-Type: multipart/alternative;*' match: each)
				ifTrue: [ ^ false ] ].
	^ true