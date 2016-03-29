#!/bin/sh
#
# Invoke java with the $DYLD_LIBRARY_PATH set with the homebrew lib dir.
# This allows java to load native libraries installed via homebrew.

export DYLD_FALLBACK_LIBRARY_PATH="$BOXEN_HOME/homebrew/lib:$DYLD_FALLBACK_LIBRARY_PATH"

# only set JAVA_HOME if it isn't already set
if [ -z "$JAVA_HOME" ]
then
    if [ -x /usr/libexec/java_home ]; then
      export JAVA_HOME=`/usr/libexec/java_home`
    fi
fi

exec /usr/bin/java "$@"
