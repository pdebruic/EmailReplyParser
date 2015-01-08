as yet unclassified
fixMultipleReplyHeaderLinesIn1: emailBody
	(self multipleLineReplyHeaderRegex matchingRangesIn: emailBody)
		do: [ :eachRange | 
			eachRange = 0
				ifFalse: [ 
					| strToFix |
					strToFix := emailBody copyFrom: eachRange start to: eachRange end.
					strToFix := strToFix replaceAll: Character cr with: Character space.
					emailBody replaceFrom: eachRange start to: eachRange end with: strToFix ] ]