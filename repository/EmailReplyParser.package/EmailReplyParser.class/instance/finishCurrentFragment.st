as yet unclassified
finishCurrentFragment
	currentFragment notNil
		ifTrue: [ 
			currentFragment finish.
			foundVisible not
				ifTrue: [ 
					currentFragment shouldBeHidden
						ifTrue: [ currentFragment makeHidden ]
						ifFalse: [ foundVisible := true ] ].
			fragments add: currentFragment.
			currentFragment := nil ]