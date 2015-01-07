as yet unclassified
isQuoted: aBoolean forLine: line
	^ self new
		isQuoted: aBoolean;
		addLine: line;
		yourself