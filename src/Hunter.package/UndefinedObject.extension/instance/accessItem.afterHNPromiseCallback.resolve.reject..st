*Hunter
accessItem: x afterHNPromiseCallback: callback resolve: resolve reject: reject
	(callback value: x)
		whenHNPromiseResolved: resolve;
		whenHNPromiseRejected: reject