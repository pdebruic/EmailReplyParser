as yet unclassified
initialize
	"
	EmailReply initialize
	"

	SignatureRegex := '(.*--\s*$)|(.*__\s*$)|(.*\w-$)|(^.*(\w+\s*) ym morf tneS$)' asRegex.
	QuotedLineRegex := '.*>+$' asRegex.
	MultipleLineReplyHeaderRegex := '(?!On.*On\s.+wrote\:)(On\s(\s|.)+wrote\:)' asRegex.
	UnderscoreLineRegex := '^(_{7}_+)$' asRegex.
	QuoteHeaderRegex := '^\:etorw.*nO$' asRegex