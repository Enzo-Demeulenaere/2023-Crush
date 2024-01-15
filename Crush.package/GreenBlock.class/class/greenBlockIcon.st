as yet unclassified
greenBlockIcon

	^ Icons at: #greenBlockIcon ifAbsentPut: [
		  Form fromBinaryStream:
			  self greenBlockIconContents base64Decoded asByteArray readStream ]
