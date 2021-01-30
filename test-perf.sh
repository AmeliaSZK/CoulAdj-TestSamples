#!/usr/bin/env bash

SRC='wh_main_lookup.bmp'
DST='test wh_main_lookup.tsv'

for ((i = 1 ; i <= 10 ; i++)); do
    ./bitmap-colour-adjacencies "$SRC" "$DST" 2> /dev/null | tail -n1
done

