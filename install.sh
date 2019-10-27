#!/bin/bash
# ================================== INSTALL ================================= #
# Project:          latex-packages
# Name:             install.sh
# Description:      Installs the package to the correct latex directory 
# Author(s):        Vincent Reverdy [2019-]
# License:          LPPL-1.3c
# ============================================================================ #
# sudo ./install.sh
# ============================================================================ #



# ========================== MOVE TO ROOT DIRECTORY ========================== #
ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $ROOTDIR
echo "DIRECTORY = "$ROOTDIR
# ============================================================================ #



# =========================== FIND TEXMF DIRECTORY =========================== #
TEXMFPATH=$(kpsewhich -var-value TEXMFLOCAL)
if [ -d $TEXMFPATH ]; then
    echo "TEXMF = "$TEXMFPATH
else
    echo "ERROR: TEXMFLOCAL not found"
    exit 1
fi
# ============================================================================ #



# ============================= INSTALL IN TEXMF ============================= #
for SUBDIRECTORY in */ ; do
    FULLNAME=$(realpath $SUBDIRECTORY)
    DIRNAME=$(realpath -L --relative-base . $SUBDIRECTORY)
    echo "PACKAGE = "$FULLNAME
    for FILENAME in $FULLNAME/*.sty; do
        if [ -f $FILENAME ]; then
            echo "- STYLE = "$FILENAME
            DESTPATH=$TEXMFPATH"/tex/latex/"$DIRNAME"/"
            if [ -d $DESTPATH ]; then
                cp $FILENAME $DESTPATH
            else
                mkdir -p $DESTPATH
                cp $FILENAME $DESTPATH
            fi
        fi
    done
    for FILENAME in $FULLNAME/*.cls; do
        if [ -f $FILENAME ]; then
            echo "- CLASS = "$FILENAME
            DESTPATH=$TEXMFPATH"/tex/latex/base/"
            if [ -d $DESTPATH ]; then
                cp $FILENAME $DESTPATH
            else
                mkdir -p $DESTPATH
                cp $FILENAME $DESTPATH
            fi
        fi
    done
done
# ============================================================================ #



# ============================ REGISTER PACKAGES ============================= #
texhash
# ============================================================================ #
