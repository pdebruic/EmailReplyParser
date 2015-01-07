as yet unclassified
visibleText
	^ String
		streamContents: [ :s | 
			fragments
				do: [ :eachFragment | 
					eachFragment isVisible
						ifTrue: [ 
							s
								nextPutAll: eachFragment content;
								nextPut: Character cr ] ] ]