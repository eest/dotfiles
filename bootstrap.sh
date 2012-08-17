#!/bin/sh
#
# Script that populates the home directory with available files.
# OS-specific files will have precedence.
#

BASEDIR=$(dirname $0)
OS=$(uname -s)
RSYNC='rsync -av'

# Make sure we can run the script from wherever.
cd ${BASEDIR}

# We want the git repo to be fresh.
git pull

# Sync default files.
${RSYNC} ./default/ ${HOME}

# Sync any OS-specific files if they exist.
if [ -d ./${OS} ]; then
    ${RSYNC} ./${OS}/ ${HOME}
fi
