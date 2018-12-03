#!/bin/bash

RANDOM=123
for i in $(seq 1000); do
   printf "%0.2f\n" $(bc <<< "scale=2; $RANDOM/32768");
done > ./bash.random

