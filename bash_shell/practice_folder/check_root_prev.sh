#!/bin/bash

if [ "$(id -u)" -eq 0 ]; then
    echo "the current user has no prevelige root"
else
    echo "the current user has no prevlige root"
fi
