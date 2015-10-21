# Latest Node

Automatically download and install Node.js directly from https://nodejs.org.

Download, validate the shasum, compile, and install a Node.js stable version. This includes both `node` and `npm` executables.

New versions override versions previously installed by `Latest Node`.


## Quick Start

After downloading the `latest-node.sh` script, make it executable by running from a command prompt:
~~~ bash
	chmod u+x latest-node.sh
~~~

There are three types of installation that `latest-node.sh` can carry. In any of these cases, Node.js becomes available as `node` after installation.

#### Install the Latest Version
To install the latest available version of Node.js, run from a command prompt:
~~~
	latest-node.sh
~~~

#### Install a Specific Release
To install a specific release (e.g. v0.12.11), run from a command prompt:
~~~
	latest-node.sh v0.12.11
~~~

#### Install the Latest Release of a Specfic Version
To install the latest release of a specific version (e.g. v0.12), run from a command prompt:
~~~
	latest-node.sh v0.12.x
~~~


## Dependencies

`Latest Node` requires:
* Bash
* Curl
* C and C++ compiler infrastructure required by Node.js: clang or gcc, and clang++ or g++.


## License

MIT license. See the LICENSE file for details. 

