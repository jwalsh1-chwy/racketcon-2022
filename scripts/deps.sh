#!/usr/bin/env bash
# Get all Racket dependencies

# check for racket
if ! command -v racket &> /dev/null
then
    echo "racket could not be found"
    exit
fi

# check that racket 8.6 is installed
racket_version=$(racket -v | grep -oE 'v\d+\.\d+')
if [ "$racket_version" != "v8.6" ]; then
    echo "racket 8.6 is required"
    exit
fi

# remove previous racket versions
# brew uninstall --force minimal-racket

# check for raco
if ! command -v raco &> /dev/null
then
    echo "raco could not be found"
    exit
fi

# install fmt
raco pkg install --auto fmt
