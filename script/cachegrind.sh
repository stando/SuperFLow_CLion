#!/bin/bash

IMGDIR=../../data/image
FLOWDIR=../../data/flow
MATCHDIR=../../data/match
IMG=sintel

valgrind --tool=cachegrind --dsymutil=yes ../bin/deepflow ${IMGDIR}/${IMG}1.png ${IMGDIR}/${IMG}2.png ${FLOWDIR}/${IMG}_flow.flo -matchf ${MATCHDIR}/${IMG}.ma