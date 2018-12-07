I am an abstract Hunter Promise Hub. My sole responsibility is to combine some 'input' promises into an 'output' promise. How is that done depends on how the method promisesCombined is defined (which is subclass responsibility). I might resolve as soon as I get as input some promise that causes rejection by itself (depending on my concrete combination strategy).

I am expected to be added up to a certain number of promises (my capacity), so that when that number of accumulated promises is reached I can create the underlying combined promise and resolve it or reject it accordingly.

I am not thread-safe.

You might want to check out my tests for usage examples.

Instance creation :

PromiseHubSubclass capacity: 5 "it might be any integer".

My public methods are:

- addInputPromise: aPromise
	Stores aPromise as an input promise. If noMoreInputPromises was sent before, then this call will be ignored.

- noMoreInputPromises
	Signals that no more input promises will be passed. Will be called automatically when the amount of added promises exceeds the number passed in the capacity construtor argument.

- promisesCombined
	Returns a promise that will be resolved or rejected depending on the resolution of the promises added as an input.