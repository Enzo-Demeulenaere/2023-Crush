baselines
baseline: spec
	<baseline>

	spec
		baseline: 'Myg'
		with: [ spec repository: 'github://Ducasse/Myg:v1.0.1/src' ].

	spec
		package: 'Crush' 
		with: [ spec requires: #( 'Myg' ) ];
		package: 'Crush-Tests'
		with: [ spec requires: #( 'Crush' ) ];
		yourself