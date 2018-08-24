I represent a metamodel entity found in an Esprima AST which has its own scope, with its own identifier name bindings.

I am intended to be the superclass for alll the metamodel classes that semantically define their own variable scope: e.g. functions, blocks., etc. I define the binding dictionary property instance variable and the lookup method which any of my subclasses may override in order to provide a custom behavior (like providing globals, etc)

I am an abstract class, so nobody interacts with me directly, but with one of my subclasses.
