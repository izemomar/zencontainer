#!/usr/bin/env bash

echo "Starting the container script..."

# Adjust user id if provided
if [ ! -z "$WWWUSER" ]; then
    echo "Adjusting user id to $WWWUSER"
    usermod -u $WWWUSER nodeuser
fi

# Ensure the npm cache directory exists and is writable
npm_cache_dir="$HOME/.npm"

if [ ! -d "$npm_cache_dir" ]; then
    mkdir -p "$npm_cache_dir"
fi

chmod -R ugo+rw "$npm_cache_dir"


# git setup: add the project directory to the safe directory list
git config --global --add safe.directory "$WORKSPACE"

# Execute commands as provided in arguments
if [ $# -gt 0 ]; then
        exec gosu $WWWUSER "$@"
else
    exec tail -f /dev/null
fi

echo "Script execution complete."
