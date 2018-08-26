I represent an entity found in an Esprima AST, like a class, function, etc.

I am a superclass for all the Esprima AST metamodels classes. All Esprima AST metamodel instances may have references to my subclasses. I may define some common behavior between all metamodels.

I am an abstract class, so nobody interacts with me directly, but with one of my subclasses.
