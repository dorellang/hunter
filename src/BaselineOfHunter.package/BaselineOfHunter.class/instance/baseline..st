baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #postLoadDoIt.
		spec
			baseline: 'NeoJSON' with: [
				spec
					repository: 'github://svenvc/NeoJSON:14da7628190cdc6b94462c8a41650b54f44a5ea9/repository' ];
			baseline: 'OSSubprocess' with: [
				spec
					repository: 'github://marianopeck/OSSubprocess:v1.0.1/repository' ];
			baseline: 'Roassal2' with: [
				spec
					repository: 'github://ObjectProfile/Roassal2:85131fe0c093513009d3106ae7151bb471aac2f0/src' ];
			baseline: 'Phanide' with: [
				spec
					repository: 'github://ronsaldo/phanide:4679635b00c35d4edda63b7927fc09c1a4948564/filetree'.
			];
			baseline: 'DataBindings' with: [
				spec
					repository: 'github://dorellang/DataBindings/src'.
			].
		spec package: 'Hunter'. ].
