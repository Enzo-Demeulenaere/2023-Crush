as yet unclassified
blueBlockIcon

	^ Icons at: #blueBlockIcon ifAbsentPut: [
		  Form fromBinaryStream:
			  self blueBlockIconContents base64Decoded asByteArray readStream ]
