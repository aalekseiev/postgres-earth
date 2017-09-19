#!/bin/bash


cat worldcitiespop.txt | awk -F ',' '{ print "INSERT INTO \"order\"(id, name, lattitide, longtitude) VALUES (" count++ "," "\x27" $3 "\x27" "," $6 "," $7 ");" }'
