#!/bin/bash

# Check if an agent is already running
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)" > /dev/null 2>&1
fi

# Add key only if not already added
ssh-add -l > /dev/null 2>&1
if [ $? -ne 0 ]; then
    ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
fi
