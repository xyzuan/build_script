#!/bin/bash

# Welcome Page
echo ==============================
echo  Welcome to xyzuanWorkstation
echo ==============================

# Enviroment
export KBUILD_BUILD_USER="xyzuan"
export KBUILD_BUILD_HOST="xyzscape-dedicated"
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
export SELINUX_IGNORE_NEVERALLOWS=true

# Build ROM
. build/envsetup.sh
lunch ancient_lavender-userdebug
mka bacon -j8
