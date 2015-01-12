*EmailReplyParserSeaside
cssClass
	^ self isQuoted
		ifTrue: [ 'emailReply quoted' ]
		ifFalse: [ 'emailReply' ]