I represent an abstract DSL Predicate Checker. As such my only responsibility is to check a predicate collection against a block.

Hook methods (must be overriden):

- checkPredicates: predicateCollection against: aBlock
	Takes a collection of predicates (which should all be up-to-2-args blocks: the first argument is a DSL Node-like object, the second is a context) and a block (which takes a predicate and should evaluate it against the Node-like object and the context). Answers true if the predicate collection "satisfies", otherwise false. What actually "satisfies" means is not defined here and is subclass responsibility.
