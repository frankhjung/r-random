#!/bin/bash
seq 1000 | awk -e 'BEGIN {srand(123)} {printf("%0.2f\n",rand());}' > awk.random
