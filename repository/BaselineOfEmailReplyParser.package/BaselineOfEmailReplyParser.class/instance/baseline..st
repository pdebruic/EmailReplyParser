baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Seaside3'
				with: [ spec
						repository: 'github://seasidest/seaside:master/repository';
						loads: #('Core' 'Email') ].
			spec
				package: 'EmailReplyParser';
				package: 'EmailReplyParserSeaside'
					with: [ spec requires: #('Seaside3') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('EmailReplyParser');
				group: 'Seaside' with: #('Core' 'EmailReplyParserSeaside') ]