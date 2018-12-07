*Hunter
hnPromiseReversed
	^ self hnPromiseThen: [ :res | HNPromise reject: res ]
		catch: [ :err | HNPromise resolve: err ]