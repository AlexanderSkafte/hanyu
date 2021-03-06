#!/bin/bash

cd $(dirname $0)

set -e

python3  ../1_convert.py      ../vocabulary/words-num.txt   ../vocabulary/words-acc.txt
python3  ../2_collect.py      ../vocabulary/words-acc.txt   ../vocabulary/words-nice.txt
python3  ../3_practice.py     ../vocabulary/words-nice.txt
python3  ../4_build_table.py  ../vocabulary/words-nice.txt  ../vocabulary/words.html
