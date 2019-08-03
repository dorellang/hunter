baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #postLoadDoIt.
		spec
			baseline: 'NeoJSON' with: [
				spec repository: 'github://svenvc/NeoJSON:c368bbf475f60d564cd3fb708e99b92efea8ffd3/repository' ];

			baseline: 'Roassal2' with: [
				spec repository: 'github://ObjectProfile/Roassal2:c1da8614c951008ea501f126ef3ccf25d73580ac/src' ];

			baseline: 'Phanide' with: [
				spec repository: 'github://ronsaldo/phanide:a38e384c9293bc1aa73fff0dd2396539a4500981/filetree' ];

			baseline: 'DataBindings' with: [
				spec repository: 'github://dorellang/DataBindings/src' ].

		spec package: 'Hunter-AST'.
		spec package: 'Hunter' with: [ spec requires: #('Hunter-AST') ].
		].
"
	spec for: #Unix do: [ 
		spec baseline: 'OSSubprocess' with: [ 
			spec repository: 'github://pharo-contributions/OSSubprocess:v1.1' ].
		spec package: 'Hunter-AST' with: [ 
			spec requires: #('OSSubprocess' ) ] 
		]

 Windows?
			baseline: 'OSWinSubprocess'
				with: [ spec repository: 'github://pharo-contributions/OSWinSubprocess:v1' ];
"
