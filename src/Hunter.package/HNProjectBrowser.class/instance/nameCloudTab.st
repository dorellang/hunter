private
nameCloudTab
	^ self newTab
		label: 'NameCloud';
		iconName: #glamorousCloud;
		closeable: false;
		presenter: (self instantiate: HNNameCloudPresenter on: [ :p | p inheritSharedDataBindings ]);
		yourself