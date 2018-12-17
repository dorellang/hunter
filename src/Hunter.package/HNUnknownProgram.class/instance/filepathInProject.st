accessing
filepathInProject
	^ (path asPath relativeTo: project commonPathPrefix asPath) pathString