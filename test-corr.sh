#!/usr/bin/env bash

SMALL_SRC='test lookup.bmp'
SMALL_DST='test lookup.tsv'
SMALL_GOLD='golden test lookup.tsv'
SMALL_ALPHA_SRC='test lookup alpha.bmp'
SMALL_ALPHA_DST='test lookup alpha.tsv'
SMALL_ALPHA_GOLD='golden test lookup alpha.tsv'
BIG_SRC='wh_main_lookup.bmp'
BIG_DST='test wh_main_lookup.tsv'
BIG_GOLD='golden warhammer_map_1_1_shadow.tsv'
BIG_VORTEX_SRC='wh2_main_great_vortex_lookup.bmp'
BIG_VORTEX_DST='test wh2_main_great_vortex_lookup.tsv'
BIG_VORTEX_GOLD='golden wh2_main_great_vortex_map_6.tsv'

./bitmap-colour-adjacencies "$SMALL_SRC" "$SMALL_DST" &> /dev/null
#./bitmap-colour-adjacencies "$SMALL_ALPHA_SRC" "$SMALL_ALPHA_DST" &> /dev/null #This one uses bitmasks?!
./bitmap-colour-adjacencies "$BIG_SRC" "$BIG_DST" &> /dev/null
./bitmap-colour-adjacencies "$BIG_VORTEX_SRC" "$BIG_VORTEX_DST" &> /dev/null

cmp --silent "$SMALL_GOLD" "$SMALL_DST" || echo "Small failed"
#cmp --silent "$SMALL_ALPHA_GOLD" "$SMALL_ALPHA_DST" || echo "Small Alpha failed"
cmp --silent "$BIG_GOLD" "$BIG_DST" || echo "Big failed"
cmp --silent "$BIG_VORTEX_GOLD" "$BIG_VORTEX_DST" || echo "Big Vortex failed"
echo "Tests finished"