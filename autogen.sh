#!/bin/sh
# you can either set the environment variables AUTOCONF, AUTOHEADER, AUTOMAKE,
# ACLOCAL, AUTOPOINT and/or LIBTOOLIZE to the right versions, or leave them
# unset and get the defaults

autoreconf --verbose --force --install --make || {
 echo 'autogen.sh failed to run';
 exit 1;
}

./configure || {
 echo 'configure failed to run, ensure you have all the dependencies needed to build this package';
 exit 1;
}

echo
echo "Type 'make' to compile this module."
echo
