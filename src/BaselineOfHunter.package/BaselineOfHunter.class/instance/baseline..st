baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/' ];
			project: 'OSSubprocess' with: [
				spec
					className: #ConfigurationOfOSSubprocess;
					versionString: #'stable';
					repository: 'github://marianopeck/OSSubprocess:master/repository' ];
			baseline: 'Roassal2' with: [
				spec
					repository: 'github://ObjectProfile/Roassal2:ebec51e358f33b135d566200c72efce2e2c65235/src' ];
			baseline: 'Phanide' with: [
				spec
					repository: 'github://ronsaldo/phanide:4679635b00c35d4edda63b7927fc09c1a4948564/filetree'.
			];
			baseline: 'DataBindings' with: [
				spec
					repository: 'github://dorellang/DataBindings/src'.
			].
		spec package: 'Hunter'. ].
