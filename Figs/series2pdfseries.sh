#!/bin/bash
#`ls --reverse *.png`

files=$@

command convert -crop '962x962+823+254' +repage -delay 30 -loop 0 $files animate.pdf
command pdfseparate "animate.pdf" "%d.pdf"
command rm "animate.pdf"
