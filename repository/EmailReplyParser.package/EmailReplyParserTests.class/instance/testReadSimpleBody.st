tests
testReadSimpleBody
	reply := EmailReply readEmailBody: self email11.
	self assert: reply fragments size equals: 3.
	self assert: (reply fragments allSatisfy: [ :each | each isQuoted not ]).
	self assert: #(false true true) equals: (reply fragments collect: [ :ea | ea isSignature ]) asArray.
	self assert: #(false true true) equals: (reply fragments collect: [ :ea | ea isHidden ]) asArray.	"self
		assert:
			'Hi folks

What is the best way to clear a Riak bucket of all key, values after
running a test?
I am currently using the Java HTTP API.
'
		equals: reply fragments first content."
	self assert: '-Abhishek Kona' , String lf , String lf equals: reply fragments second content