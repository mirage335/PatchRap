#!/bin/bash

file="$1"
newRef="$2"

newFile="$file"".""$newRef"".pcb"

cp "$file" "$newFile"

sed -i 's/\(Element\[\".*\"\ \".*\"\ \"\)\(.*\)\(\"\ \"\)\(.*\)\(\".*\".*\".*\)/\1'"$newRef"'\/\2\3\4\5/g' "$newFile"
