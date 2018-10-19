baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/dorellang/Hunter/main/'.
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
			project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ];
			baseline: 'Phanide' with: [
				spec
					repository: 'github://ronsaldo/phanide:4679635b00c35d4edda63b7927fc09c1a4948564/filetree'.
			].
		spec package: 'Hunter'. ].
