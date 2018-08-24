const path = require('path');

module.exports = {
  context: __dirname,
  target: 'node',
  mode: 'production',
  entry: "./esprima-bin-wrapper.js",
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'esprima-bin-wrapper.node.js',
  },
}
