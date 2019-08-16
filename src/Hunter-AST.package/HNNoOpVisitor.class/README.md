I am a visitor for the Esprima AST nodes that does nothing for every node.

I implement dummy visiting methods for the DMESASTNodeVisitor API.

I am here for convenience so subclasses can override some visiting methods that are interesting for their purpose and just ignore the rest.
