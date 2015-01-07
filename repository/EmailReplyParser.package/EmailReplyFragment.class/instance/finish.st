as yet unclassified
finish
	content := String
		streamContents: [ :s | 
			lines
				do: [ :eachLine | 
					s
						nextPutAll: eachLine;
						nextPut: Character cr ] ].
	lines := nil.
	content := content reverse