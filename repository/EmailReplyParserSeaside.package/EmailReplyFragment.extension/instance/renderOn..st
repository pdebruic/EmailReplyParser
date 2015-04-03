*EmailReplyParserSeaside
renderOn: html
	self isVisible
		ifTrue: [ 
			| cssClass |
			cssClass := self cssClass.
			self lines
				do: [ :eachLine | 
					html div
						class: cssClass;
						with: eachLine reverse ] ]