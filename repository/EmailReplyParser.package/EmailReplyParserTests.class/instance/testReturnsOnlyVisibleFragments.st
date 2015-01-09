tests
testReturnsOnlyVisibleFragments
	| visibleText visibleFragments |
	reply := EmailReply readEmailBody: self email21.
	visibleFragments := reply fragments select: [ :each | each isVisible ].
	visibleText := String
		streamContents: [ :s | 
			visibleFragments
				doWithIndex: [ :eachFragment :index | 
					s nextPutAll: eachFragment content.
					index = visibleFragments size
						ifFalse: [ s nextPut: Character lf ] ] ].
	self assert: visibleText trimRight equals: reply visibleText