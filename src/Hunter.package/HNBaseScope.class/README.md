I am the abstract ancestor class of all the Hunter ECMAScript scopes. My main responsibility is to keep track of the bound Identifier Names in a certain context within a ECMAScript program and the scopes that enclose that context.

I may also hold name-value bindings, which aren't (and can't be) totally accurate, but rather represent a "guess" of the value of the variable in that part of the program.

I am intended to be used by some Hunter AST processors (aka Node Visitors) which create instances of me and augment the AST with data that can be inferred with my help. In order to assist that job I have the following instance variables (mind that they're not meant to be accessed directly):

-  declarations: An identifier name (String)  to boolean dictionary that contains all the names declared in this scope.  When the value is true for a certain identifier we say that the identifier is marked. This is useful for keeping track if an identifier is accessed before it's declaration. We forbid the binding of an unmarked identifier to a value.

- currentPosition: an Integer value that is increased each time a value is bound to a name.

- bindings: An identifier name (String) to HNScopeBinding object which is used to keep track of assignments (to guess the value of a variable in a certain point in the program).
