as yet unclassified
initialize
	"EmailReply initialize"

	"SignatureRegex := '(--\s*$|__\s*$|\w-$)|(^(\w+\s*){1,3} ym morf tneS$)' asRegex."

	QuotedLineRegex := '(>+)' asRegex.
	MultipleLineReplyHeaderRegex := '(?!On.*On\s.+?=wrote\:)(On\s(.+)wrote\:)' asRegex.
	UnderscoreLineRegex := '/([^\n])(?=\n_{7}_+)$/' asRegex.
	QuoteHeaderRegex := '^\:etorw.*nO' asRegex