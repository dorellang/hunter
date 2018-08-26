running
setUp
	project := HNProject new.
	rootScope := HNRootScope withProject: project.
	program := HNProgram new.
	project addProgram: program