# Node.js Upgrade

*On the cutting-edge of Node.js development.*

Downloads, compiles, and installs Node.js automatically from https://nodejs.org.

## Introduction
Nodejs-upgrade is a shell script that checks for Node.js updates, and if a newer version is available, automatically downloads, compiles, and installs the new version.

Nodejs-upgrade can also download and install a specific stable version.

## How It Works?
Nodejs-upgrade automates the following operations:
* Checks for a specific version or latest stable version of Node.js.
* Downloads the source code from https://nodejs.org.
* Validates the shasum of the sources.
* Compiles and install teh code.

Nodejs-upgrade installs both `node` and `npm` executables.

New versions override versions previously installed.

## Quick Installation
After downloading the `nodejs-upgrade` script, make it executable by running from a command prompt:
~~~ bash
	$  chmod u+x nodejs-upgrade
~~~

## Usage
Nodejs-upgrade supports three types of installation. Regardeless of the type of installation, nodejs-upgrade always overwrites the `node` and `npm` binaries.

#### Install the Latest Available Version
To install the latest available version of Node.js, run from a command prompt:
~~~ bash
	$  nodejs-upgrade
~~~

#### Install a Specific Release
To install a specific release (e.g. v0.12.11), run from a command prompt:
~~~ bash
	$  nodejs-upgrade v0.12.11
~~~

#### Install the Latest Release of a Specfic Version
To install the latest release of a specific version (e.g. v0.12), run from a command prompt:
~~~
	$  nodejs-upgrade v0.12.x
~~~


## Dependencies
Nodejs-upgrade requires:
* Bash
* Curl
* C and C++ compiler infrastructure required to build Node.js: clang or gcc, and clang++ or g++.


## MIT License
Node.js Upgrade is open-source software released under the MIT license. See the LICENSE file for details. 

