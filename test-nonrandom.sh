#!/bin/bash

for i in $(seq 1000); do
    printf "0.%02d\n" $(( i % 100 ))
done > test.nonrandom
