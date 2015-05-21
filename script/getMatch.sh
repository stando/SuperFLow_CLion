#!/bin/bash

IMGDIR=../../data/image
FLOWDIR=../../data/flow
MATCHDIR=../../other/deepMatching
IMG=sintel

${MATCHDIR}/deepmatching ${IMGDIR}/${IMG}1.png ${IMGDIR}/${IMG}2.png -iccv_settings | python ${MATCHDIR}/rescore.py ${IMGDIR}/${IMG}1.png ${IMGDIR}/${IMG}2.png > {IMG}.ma