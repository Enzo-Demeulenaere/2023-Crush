as yet unclassified
redBlockIcon

	^ Icons at: #redBlockIcon ifAbsentPut: [
		  Form fromBinaryStream:
			  self redBlockIconContents base64Decoded asByteArray readStream ]
