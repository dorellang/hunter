I am an abstract class defining the visiting API for Esprima AST node visitors.

My only responsibility is to serve as a mean of "documentation" so that subclasses know which methods must implement in order to be an AST node visitor.  All the visiting methods are #subclassResponsibility.

Although it is unnecessary, I recommend to all Esprima AST node visitors to subclass me (directly or not).
