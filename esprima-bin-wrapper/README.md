# Usage Instructions

(Don't forget to do `npm install` (or `yarn`)!!)

Within the project directory do:

```
node esprima-bin-wrapper.js -m path_with_js_files/ > result.json

```

to get a result.json file with the AST of all the JS scripts in `path_with_js_files`.


# How is it used from Pharo

Pharo code invokes `dist/esprima-bin-wrapper.node.js`. 
Note that is not exactly the file referenced in previous section, but the output of webpack.

- Invoked js file: `esprima-bin-wrapper/dist/esprima-bin-wrapper.node.js`
- Invocation from Pharo: `src/Hunter-AST.package/HNEsprimaWrapper.class/class/esprimaWrapperPathRelativeTo..st`


# Update Instructions

Following, steps to update dependencies and re-build the webpack output.
```
npm install -g npm-check-updates
ncu -u
npm update
npm run build
```
After, open Hunter and run tests in Pharo Test Runner.

A reference: https://github.com/dorellang/hunter/issues/57
