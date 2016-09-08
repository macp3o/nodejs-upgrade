# Upgrade NodeJS

*On the cutting-edge of Node.js development.*

Downloads, compiles, and installs Node.js automatically from https://nodejs.org.

## Introduction
Upgrade-nodejs is a shell script that checks for Node.js updates, and if a newer version is available, automatically downloads and installs the new version.

Upgrade-nodejs can also download and install a specific stable version.

## How It Works?
Upgrade-nodejs automates the following operations:
* Checks for a specific version or latest stable version of Node.js.
* Downloads the source code from https://nodejs.org.
* Validates the shasum of the sources.
* Compiles and install teh code.

Upgrade-nodejs installs both `node` and `npm` executables.

New versions override versions previously installed by `upgrade-nodejs`.

## Quick Installation
After downloading the `upgrade-nodejs` script, make it executable by running from a command prompt:
~~~ bash
	chmod u+x upgrade-nodejs
~~~

## Usage
Upgrade-nodejs supports three types of installation. Regardeless of the type of installation, upgrade-nodejs always overwrites the `node` and `npm` binaries.

#### Install the Latest Available Version
To install the latest available version of Node.js, run from a command prompt:
~~~ bash
	upgrade-nodejs
~~~

#### Install a Specific Release
To install a specific release (e.g. v0.12.11), run from a command prompt:
~~~ bash
	upgrade-nodejs v0.12.11
~~~

#### Install the Latest Release of a Specfic Version
To install the latest release of a specific version (e.g. v0.12), run from a command prompt:
~~~
	upgrade-nodejs v0.12.x
~~~


## Dependencies
Upgrade-nodejs requires:
* Bash
* Curl
* C and C++ compiler infrastructure required by Node.js: clang or gcc, and clang++ or g++.


## MIT License
See the LICENSE file for details. 

