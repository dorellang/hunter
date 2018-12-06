private
deepRegister: someFolders colors: colors
	someFolders ifEmpty: [ ^ self ].
	colors withIndexDo: [ :color :index | 
		| aFolder subFolders subFoldersColors |
		aFolder := someFolders at: index.
		colorByFolderMap at: aFolder put: color.
		subFolders := aFolder subFoldersSortedByBasename.
		subFoldersColors := self gradient: subFolders size basedOn: color.
		self 
			deepRegister: subFolders
			colors: subFoldersColors ]