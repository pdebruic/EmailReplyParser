accessing
plainTextLinesFromMultipartEmail: lines
	| boundaryIdx plainIdx plainEndIdx streamOfLines index |
	streamOfLines := lines readStream.
	boundaryIdx := nil.
	plainIdx := nil.
	plainEndIdx := nil.
	index := 1.
	[ boundaryIdx isNil or: [ plainIdx isNil or: [ plainEndIdx isNil or: streamOfLines atEnd ] ] ]
		whileTrue: [ 
			| nextLine |
			nextLine := streamOfLines next.
			boundaryIdx isNil
				ifTrue: [ 
					('*boundary*' match: nextLine)
						ifTrue: [ boundaryIdx := (nextLine findBetweenSubstrings: #('y="' '";')) second ] ]
				ifFalse: [ 
					plainIdx isNil
						ifTrue: [ 
							nextLine = 'Content-Type: text/plain;'
								ifTrue: [ 
									| strFound |
									strFound := false.
									[ strFound ]
										whileFalse: [ 
											index := index + 1.
											nextLine := streamOfLines next.
											nextLine = ''
												ifTrue: [ 
													plainIdx := index + 1.
													strFound := true ] ] ] ]
						ifFalse: [ 
							plainEndIdx isNil
								ifTrue: [ 
									('--' , boundaryIdx match: nextLine)
										ifTrue: [ plainEndIdx := index - 1 ] ] ] ].
			index := index + 1 ].
	^ lines copyFrom: plainIdx to: plainEndIdx