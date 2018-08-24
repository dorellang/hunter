private
resolveDependencyPath: importedPathString
	| isRelative |
	isRelative := (importedPathString beginsWith: './') or: [ importedPathString beginsWith: '../' ].
	^ isRelative ifTrue: [
		| resolvedPath |
		resolvedPath := filepath asPath parent
			resolve: (importedPathString asPath relativeTo: '.' asPath).
		(self project programsByPath: '/', (resolvedPath printWithDelimiter: $/), '.js')
			ifNil: [
				self project programsByPath: '/', (resolvedPath printWithDelimiter: $/), '/index.js'
			].
	] ifFalse: [ nil ]