# Latest NodeJS

Script that installs Node.js directly from https://nodejs.org.

Latest-node downloads, validates the shasum, compiles, and installs a Node.js stable version. This includes the node and npm executables.

The script can install the latest stable version of Node.js, or a specific release. New versions override the previously installed version by latest-node.


## Usage

After downloading the `latest-node.sh` script, make it executable by changing the file properties or running from a command prompt:
~~~ bash
	$ chmod u+x latest-node.sh
~~~

There are three ways to run `latest-node.sh` from a command prompt:
* `$ latest-node.sh -- installs the latest available version of Node.js
* `$ latest-node.sh v0.12.11` -- installs the specified version
* `$ latest-node.sh v0.12.x` -- installs the latest release of the specified version

After installation, Node.js is available as `node`.


## Requirements

The following is required for latest-node:
* Bash, curl, and C and C++ compiler suite supported by Node.js (clang and clang++, or gcc and g++).


## License

MIT
