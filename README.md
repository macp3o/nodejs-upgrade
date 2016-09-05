# Upgrade-Node.JS

*On the cutting-edge of Node.JS development.*

Downloads, compiles, and installs Node.js automatically from https://nodejs.org.

## Introduction
Upgrade-node.js is a shell script that checks for NodeJS updates, and if a newer version is available, automatically downloads and installs the new version.

Upgrade-node.js can also download and install a specific stable version.

## How It Works
Upgrade-node.js automates the following operations:
* Checks for a specific version or latest stable version of NodeJS.
* Downloads the source code from https://nodejs.org.
* Validates the shasum of the sources.
* Compiles and install teh code.

Upgrade-node.js installs both `node` and `npm` executables.

New versions override versions previously installed by latest-node.

## Setup
After downloading the `upgrade-node.js` script, make it executable by running from a command prompt:
~~~ bash
	chmod u+x upgrade-node.js
~~~

## Usage
Upgrade-node,js supports three types of installation. Regardeless of the type of installation, upgrade-node.js always overwrites the `node` and `npm` binaries.

#### Install the Latest Available Version
To install the latest available version of Node.js, run from a command prompt:
~~~ bash
	upgrade-node.js
~~~

#### Install a Specific Release
To install a specific release (e.g. v0.12.11), run from a command prompt:
~~~ bash
	upgrade-node.js v0.12.11
~~~

#### Install the Latest Release of a Specfic Version
To install the latest release of a specific version (e.g. v0.12), run from a command prompt:
~~~
	upgrade-node.js v0.12.x
~~~


## Dependencies
Upgrade-node.js requires:
* Bash
* Curl
* C and C++ compiler infrastructure required by Node.js: clang or gcc, and clang++ or g++.


## MIT License
See the LICENSE file for details. 

