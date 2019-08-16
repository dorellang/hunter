I am the superclass of all Esprima v4 AST nodes in this package.

I provide some useful testing methods that may be overriden by subclasses. I give access to source location if available for the node. I define the visitor API (TODO).

I am an abstract class that is meant to be subclassed eventually by concrete AST Nodes. Every concrete AST Node must implement the type message. The accept message does not need to be overriden as this is calculated automagically via the type message. 
