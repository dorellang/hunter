# Hunter

(WARNING: This is a Work-In-Progress, so stuff may not work as expected...)

Hunter (standing for **H**unter **U**seful and **N**ice **T**ool for **E**CMA**S**cript **R**eengineering) is a platform in development that helps programmers to understand JavaScript applications via interactive visualizations.

Currently we're only supporting up to ES5 apps (this will change soon).

## Install Hunter 

Run the `install.sh` script in the repo.

## Produce a JSON AST file from a JavaScript application to load onto Hunter
Next you will want to actually load data from a JS project. Check this [the script in this project](https://github.com/dorellang/esprima-bin-wrapper) to check how you can produce an AST JSON file that you can actually load onto Hunter. From now we'll just assume that you have such file at `~/result.json`

## Visualize!

Assuming you did the former steps, in your Smalltalk image open the World Menu and go to Hunter >  Open and load your `~/result.json` file. Wait a moment (it takes about ~40 seconds for a medium to big sized project to load), and then an inspector window with Treemap visualization should open.
