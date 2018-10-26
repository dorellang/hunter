'use strict';

const esprima = require("esprima");
const yargs = require("yargs");
const fs = require("fs");
const Path = require("path");
const JSONStream = require("JSONStream");

// Processes a single file path
class FileProcessor {
  constructor(kindName, parseFn){
    this.kindName = kindName;
    this.parseFn = parseFn;
  }

  processFilePath(filePath){
    let sourceCode;
    try {
      sourceCode = fs.readFileSync(filePath, {encoding: 'utf8'});
    } catch (e) {
      return {
        path: Path.resolve(filePath),
        type: this.kindName,
        status: 'error',
        result: e,
      };
    }
    return this.processSourceCode(filePath, sourceCode);
  }

  processSourceCode(filePath, sourceCode){
    let ast;
    try {
      ast = this.parseFn(sourceCode);
    } catch (e) {
      return {
        path: Path.resolve(filePath),
        type: this.kindName,
        status: 'error',
        result: e,
      };
    }
    return {
      path: Path.resolve(filePath),
      type: this.kindName,
      status: 'ok',
      result: ast,
    };
  }
}

// Process a path that may be a directory, else delegates to FileProcessor
class PathProcessor {

  constructor(kindName, fileProcessor){
    this.kindName = kindName;
    this.fileProcessor = fileProcessor;
  }

  processPath(path){
    try {
      const stat = fs.statSync(path);
      if(stat.isDirectory()){
        const childPaths = fs.readdirSync(path)
            .map(relChildPath => Path.join(path, relChildPath))
            .filter(childPath => {
              try {
                if(fs.statSync(childPath).isDirectory()){
                  return true;
                } else {
                  return childPath.endsWith('.js');
                }
              } catch (e) {
                console.log(e);
                return false;
              }
            });
        return childPaths.map(childPath => this.processPath(childPath))
                .reduce((acc, result) => acc.concat(result), []);
      } else {
        return [this.fileProcessor.processFilePath(path)];
      }
    } catch (e){
      return [{
        path: path,
        type: this.kindName,
        status: 'error',
        result: e,
      }];
    }
  }
}

const argv = yargs
  .option('s', {
    alias: 'script',
    type: 'array',
    requiresArg: true,
    description: "A script or a directory containing .js scripts to be parsed."
  })
  .option('m', {
    alias: 'module',
    type: 'array',
    requiresArg: true,
    description: "A module or a directory containing .js modules to be parsed."
  })
  .option('x', {
    alias: 'x',
    type: 'array',
    requiresArg: true,
    description: "A filepath or a directory containing .js sources. " + 
      "First it'll try to parse it as a module. If that doesn't work then it " +
      "will try to parse it as a script."
  })
  .check(argv => {
    if(argv.s || argv.m || argv.x){
      return true;
    } else {
      throw "Either some scripts, modules or sources must be specified."
    }
  })
  .help()
  .usage(
    'Parses some Javascript files with Esprima and outputs the AST to stdout.'
  )
  .showHelpOnFail(true)
  .argv;


const scriptProcessor = new PathProcessor(
  'script',
  new FileProcessor('script',
                    sourceCode =>
                      esprima.parseScript(sourceCode, {range: true, loc: true}))
);
const moduleProcessor = new PathProcessor(
  'module',
  new FileProcessor('module',
                    sourceCode =>
                      esprima.parseModule(sourceCode, {range: true, loc: true}))
);
const moduleOrScriptProcessor = new PathProcessor(
  'moduleOrScript',
  new FileProcessor(
    'moduleOrScript',
    sourceCode => {
      try {
        return esprima.parseModule(sourceCode, {range: true, loc: true})
      } catch (e) {
        return esprima.parseScript(sourceCode, {range: true, loc: true})
      }
    }
  )
);

const moduleResults = (argv.m || [])
                        .map(sPath => moduleProcessor.processPath(sPath))
                        .reduce((acc, result) => acc.concat(result), []);
const scriptResults = (argv.s || [])
                        .map(sPath => scriptProcessor.processPath(sPath))
                        .reduce((acc, result) => acc.concat(result), []);
const moduleOrScriptResults = (argv.x || [])
                      .map(sPath => moduleOrScriptProcessor.processPath(sPath))
                      .reduce((acc, result) => acc.concat(result), []);

const results = moduleResults.concat(scriptResults)
  .concat(moduleOrScriptResults);

var jsonStream = JSONStream.stringify();
jsonStream.on("data", json => console.log(json));
results.forEach(result => {
  jsonStream.write(result);
});
jsonStream.end();
