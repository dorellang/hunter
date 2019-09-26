# Hunter

[![Build Status](https://travis-ci.org/dorellang/hunter.svg?branch=master)](https://travis-ci.org/dorellang/hunter)

Hunter (standing for **H**unter **U**seful and **N**ice **T**ool for **E**CMAScript **R**eengineering) is a tool to help understanding JavaScript applications via interactive visualizations.

Hunter runs on top of [Pharo](http://pharo.org), a live programming environment.

![screenshot](screenshot.png)

## How to use

We do not provide a ready to use distribution of Hunter, but it is simple to build from sources.

Build: Clone or download this repository and execute `./build.sh` in a terminal (Powershell in Windows). Add `--32bits` argument if your system is 32-bits.

Start: Once the build finished, use `./start.sh` to open the application. You can open a JavaScript project in two ways: click on the open button and choose the directory, or drag and drop it.

### System requirements

Hunter runs under Linux, OS X, and Windows.
[NodeJS](https://nodejs.org/en/) (version >= 6) must be available in the PATH of your system.

## Development

There are two main alternatives to get a Pharo image with Hunter loaded on it:

* Execute `./build.sh --dev` in a terminal, then execute `./pharo-ui Pharo.image`.
* Download a Pharo 7 image by yourself, then load the `BaselineOfHunter`.

For the second alternative, you can evaluate the following inside Pharo:

```smalltalk
Metacello new
	baseline: 'Hunter';
	repository: 'github://dorellang/hunter:master/src';
	load.
```
