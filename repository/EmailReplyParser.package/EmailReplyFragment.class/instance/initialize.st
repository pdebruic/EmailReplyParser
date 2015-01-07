as yet unclassified
initialize
	super initialize.
	isSignature := false.
	isQuoted := false.
	isHidden := false.
	lines := OrderedCollection new