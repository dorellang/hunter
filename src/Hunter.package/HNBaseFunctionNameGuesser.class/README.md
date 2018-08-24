I am the superclass of all the Function Name Guessers. A Function Name Guesser tries to guess the name of an EcmaScript function by looking where the function declaration or expression node appears in the AST. Subclasses should implement the guessForNode: message.

Though not necessary, I recommend that if you want to implement a Name Guesser you should do it by subclassing me, since I might provide some common behavior in the future.

TODO:
- Check if this works with classes
- Implement 'bound method' (func.bind stuff)
- Implement assignment expression with member expressions
- Implement new Function() as 'anonymous'