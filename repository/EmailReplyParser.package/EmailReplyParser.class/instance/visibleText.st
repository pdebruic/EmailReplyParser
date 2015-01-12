accessing
visibleText
	^ (String lf join: (fragments select: #isVisible thenCollect: #content)) trimRight