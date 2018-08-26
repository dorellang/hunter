I am a class which has some utility methods that allow to parse JavaScript projects via Node Esprima. I am meant to be subclassed with the esprimaBinWrapperGzippedBase64 message overriden which should return the one-file-bundled version of the esprima-bin-wrapper script gzipped and base64-encoded.

The source URL for the esprima-bin-wrapper script is https://github.com/dorellang/esprima-bin-wrapper .

The former duty should be done by the post-installation in ConfigurationOfHunter.