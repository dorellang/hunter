baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec postLoadDoIt: #postLoadDoIt.
		spec
			baseline: 'NeoJSON' with: [
				spec
					repository: 'github://svenvc/NeoJSON:b10eb7aa1b3bac323da2ab1b286a27e6c8810076/repository' ];
			baseline: 'OSSubprocess' with: [
				spec
					repository: 'github://marianopeck/OSSubprocess:v1.0.1/repository' ];
			baseline: 'Roassal2' with: [
				spec
					repository: 'github://ObjectProfile/Roassal2:9b70250774b5f3a18502f86e6f9fa2d04541e114/src' ];
			baseline: 'Phanide' with: [
				spec
					repository: 'github://ronsaldo/phanide:4679635b00c35d4edda63b7927fc09c1a4948564/filetree'.
			];
			baseline: 'DataBindings' with: [
				spec
					repository: 'github://dorellang/DataBindings/src'.
			].
		spec package: 'Hunter'. ].
