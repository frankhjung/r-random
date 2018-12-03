#!/bin/bash
cat /dev/urandom | tr -dc '0-9' | fold -w 2 | awk '{printf("0.%02d\n",$1)}' | head -1000 > urandom.random
