# Latest-Node

*Download, compile, and install Node.js automatically from https://nodejs.org.*

# Introduction
Latest-node is a shell script that checks for NodeJS updates, and if a newer version is available, automatically downloads and installs the new version.

Latest-node can also download and install a specific stable version.

Latest-node automates the following operations:
* Checks for a specific version or latest stable version of NodeJS.
* Downloads the source code from https://nodejs.org.
* Validates the shasum of the sources.
* Compiles and install teh code.

Latest-node installs both `node` and `npm` executables.

New versions override versions previously installed by latest-node.

# Setup

After downloading the `latest-node.sh` script, make it executable by running from a command prompt:
~~~ bash
	chmod u+x latest-node
~~~

# Usage

Latest-node supports three types of installation. Regardeless of the type of installation, latest-node always overwrites the `node` and `npm` binaries.

#### Install the Latest Version
To install the latest available version of Node.js, run from a command prompt:
~~~
	latest-node
~~~

#### Install a Specific Release
To install a specific release (e.g. v0.12.11), run from a command prompt:
~~~
	latest-node v0.12.11
~~~

#### Install the Latest Release of a Specfic Version
To install the latest release of a specific version (e.g. v0.12), run from a command prompt:
~~~
	latest-node v0.12.x
~~~


# Dependencies

Latest0-node requires:
* Bash
* Curl
* C and C++ compiler infrastructure required by Node.js: clang or gcc, and clang++ or g++.


# License

MIT license. See the LICENSE file for details. 

