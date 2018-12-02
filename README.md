# Hunter

[![Build Status](https://travis-ci.org/dorellang/hunter.svg?branch=master)](https://travis-ci.org/dorellang/hunter)

(WARNING: This is a Work-In-Progress, so stuff may not work as expected...)

Hunter (standing for **H**unter **U**seful and **N**ice **T**ool for **E**CMA**S**cript **R**eengineering) is a platform in development that helps programmers to understand JavaScript applications via interactive visualizations.

Hunter runs on top of [Pharo](http://pharo.org), the live programming environment.

## Install Hunter 

In order to install and test Hunter currently you have two options: use the `install.sh` script or load it into an existing Pharo image. Either way you'll want to check the System Requirements.

### System requirements

Currently Hunter only runs under Linux and OS X. Windows is not supported. Also you need to have a [NodeJS](https://nodejs.org/en/) installation in your system. Node 6 runs fine, but Node 8 should work too.

Furthermore, if you're running a 64-bit version of Linux (quite likely nowadays) you need to install the 32-bit versions of some libraries. This will do the work in Debian 8+ and Ubuntu 14.04+ (according to [the official Pharo docs](http://pharo.org/gnu-linux-installation)):

```
sudo dpkg --add-architecture i386 
sudo apt-get update
sudo apt-get install libx11-6:i386 
sudo apt-get install libgl1-mesa-glx:i386 
sudo apt-get install libfontconfig1:i386 
sudo apt-get install libssl1.0.0:i386
sudo apt-get install libcairo2:i386
```

### Install Hunter from zero with install.sh

This is the recommended way of installing Hunter as it gets you a pristine Pharo 7 image and you can't go wrong if you covered the System Requirements (otherwise please submit an issue). Simply run the `install.sh` script in this repo. Then if you want to run Hunter you can launch the Pharo image by running and run `./pharo-ui` in order to launch the image. This works in Ubuntu 16.04/18.04.

### Load Hunter into an existing Pharo 7 image

Maybe you find that the overhead of downloading a new Pharo image and VM is too much if you already have some other images there. In that case, do the following:

```smalltalk
Metacello new
	baseline: 'Hunter';
	repository: 'github://dorellang/hunter:master/src';
	load.
```

## Run and visualize your project!

In your Smalltalk image open the World Menu and go to "Hunter > Open JavaScript project directory" and select the directory where the JS project you want to analyze is. Wait a moment (it takes about ~40 seconds for a medium to big sized project to load), and then an inspector window with some cool visualizations should open.
