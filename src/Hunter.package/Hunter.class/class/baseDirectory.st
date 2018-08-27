accessing
baseDirectory
	^ BaseDirectory ifNil: [ IceLibgitRepository localRepositoriesLocation / #dorellang / #hunter ]