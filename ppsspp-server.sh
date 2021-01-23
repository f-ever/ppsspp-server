#!/bin/bash
find /roms/ -name *.iso -type f -exec sh -c 'f="{}";echo ${f:5}' \; | sort > /roms/index.html
nginx
inotifywait -rm -e 'modify,move,create,delete' --excludei 'index.html' /roms | while read path action file; do
        echo $path $action $file
        if [[ "$file" =~ .*\.iso$ ]]; then
            find /roms/ -name *.iso -type f -exec sh -c 'f="{}";echo ${f:5}' \; | sort > /roms/index.html
            echo "Index finish."
        fi
    done
