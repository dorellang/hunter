I am a helper class. My instances via the guessForNode: message attempt to guess the name of the function corresponding to the node passed as an argument by checking if the node is a right hand side expression of an assignment pattern (currently only  the case when the left hand side is an identifier is supported).

TODO:
- Support  member expressions at left hand side