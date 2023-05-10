#!/bin/bash

filefull=$1
if [ -z "$filefull" ]; then
    exit 1
fi
filepath="$(dirname -- $filefull)"

command convert "$filefull" "$filepath/animate.pdf"
command pdfseparate "$filepath/animate.pdf" "$filepath/%d.pdf"
command rm "$filepath/animate.pdf"
