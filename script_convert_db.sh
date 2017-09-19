#!/bin/bash


cat worldcitiespop.txt | awk -F ',' '{ gsub(/\x27/, "", $3); print "INSERT INTO \"order\"(id, name, lattitide, longtitude) VALUES (" count++ "," "\x27" $3 "\x27" "," "\x27" $6 "\x27" "," "\x27" $7 "\x27" ");" }' > ./output.sql

sed -i 's/[^[:print:]]//' ./output.sql
