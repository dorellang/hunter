*Hunter
accessItem: x afterHNPromiseCallback: callback resolve: resolve reject: reject
	(callback value: x)
		hnPromiseThen: [ :cbResult | 
			self value whenHNPromiseResolved: [ :finallyResult | resolve value: cbResult ];
				whenHNPromiseRejected: [ :finallyError | reject value: finallyError ]
		] catch: [ :cbError |
			self value whenHNPromiseResolved: [ :finallyResult | reject value: cbError ];
				whenHNPromiseRejected: [ :finallyError | reject value: finallyError ]
		]