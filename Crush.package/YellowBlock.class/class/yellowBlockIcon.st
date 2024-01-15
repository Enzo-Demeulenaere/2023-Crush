as yet unclassified
yellowBlockIcon

	^ Icons at: #yellowBlockIcon ifAbsentPut: [
		  Form fromBinaryStream:
			  self yellowBlockIconContents base64Decoded asByteArray readStream ]
		