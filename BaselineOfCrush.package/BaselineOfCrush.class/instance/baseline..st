baselines
baseline: spec
	<baseline>

	spec
		baseline: 'Myg'
		with: [ spec repository: 'github://Ducasse/Myg:v1.0.1/src' ].

	spec
		package: 'crush3p' 
		with: [ spec requires: #( 'Myg' ) ];
		package: 'crush3p-Tests'
		with: [ spec requires: #( 'crush3p' ) ];
		yourself