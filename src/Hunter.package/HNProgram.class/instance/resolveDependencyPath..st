private
resolveDependencyPath: importedPathString
	| resolvedPath |
	(importedPathString beginsWith: '/') ifTrue: [ ^nil ].

	resolvedPath := (importedPathString beginsWith: '.')
		ifTrue: [ (filepath asPath parent resolveString: importedPathString) canonicalize ]
		ifFalse: [
			" this was for node_modules stubs...
			self project commonPathPrefix asPath / 'node_modules' / '.hunter_stubs' / importedPathString "
			^ nil
		].

	#('' '.js' '/index.js') do: [:suffix | 
		(self project programsByPath: resolvedPath pathString, suffix) 
			ifNotNil: [:program | ^program ] ].

	^ nil.