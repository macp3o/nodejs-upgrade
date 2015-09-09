#! /bin/bash
#
# Install the lastest node.js version from source
#
# Requires curl, and gcc and g++ or clang and clang++
#

if [ "$1" = "-h" -o "$1" = "--help" ]; then
	echo "Usage: latest-node"
	echo "  or: latest-node VERSION"
	echo "Download, compile, and install a Node.js versiion from https://nodejs.org."
	echo
	echo "If no version is specified, the latest version is selected."
	echo "Otherwise, a version number must use the format v0.12.2 or v0.12.x."
	echo "The v0.12.x form means the latest release of version v0.12."
	exit 0
fi

# Get latest version information from the repository
# Comman line argument can be empty | v0.12.5 | v0.12.x
#
REPO=https://nodejs.org/dist/latest
if [ -n "$1" ]; then REPO=$REPO-$1; fi

LATEST=`curl -s $REPO/ | grep -sPo 'node-v[\d.]+tar\.gz' | head -1`
if [ $? -ne 0 ]; then exit 1; fi

BASENAME=`basename -s '.tar.gz' "$LATEST"`
VERSION=`grep -sPo 'v\d+(\.\d+)*' <<< $LATEST`

if [ `which node` ] && [ `node -v` = $VERSION ]; then
	echo "Installed node $LATEST is already the latest version"
	exit 0
fi
if [ `which nodejs` ] && [ `nodejs -v` = $VERSION ]; then
	echo "Installed nodejs $LATEST is already the latest version"
	exit 0
fi


# Download, validate, compile, and install
#
pushd /tmp > /dev/null

echo "Downloading source of node $VERSION"
curl -o $LATEST $REPO/$LATEST

echo "Verifying (shasum)"
SHASUM=`curl -s $REPO/SHASUMS256.txt.asc | grep -s $LATEST`
if [ "`shasum -a 256 $LATEST`" != "$SHASUM" ]; then
	echo "File corrupted (non-matching shasums)"
	popd > /dev/null
	exit 1
else
	echo "File shasum is okay"
fi

echo "Compiling from source"
tar -zxf $LATEST
rm $LATEST 
cd $BASENAME
./configure
make

echo "Installing"
sudo make install
cd  ..
rm -rf $BASENAME

popd > /dev/null


echo "Installed node $VERSION"


