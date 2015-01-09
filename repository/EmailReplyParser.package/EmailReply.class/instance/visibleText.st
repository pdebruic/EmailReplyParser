as yet unclassified
visibleText
	^ (String lf join: (fragments select: #isVisible thenCollect: #content)) trimRight