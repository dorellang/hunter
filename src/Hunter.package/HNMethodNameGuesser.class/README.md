I am a helper class. My instances via the guessForNode: message attempt to guess the name of the function corresponding to the node passed as an argument by trying to see if the node is within an object/class expression in a property/method definition.

TODO:
- Support computed properties name
- Support symbols (requires the former)