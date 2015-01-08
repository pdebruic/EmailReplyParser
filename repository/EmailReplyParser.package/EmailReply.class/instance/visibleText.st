as yet unclassified
visibleText
	^ String cr join: (fragments select: #isVisible thenCollect: #content)