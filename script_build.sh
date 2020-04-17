#!/bin/bash

# Welcome Page
echo ==============================
echo  Welcome to xyzuanWorkstation
echo ==============================

echo # Mounting my workspace
cd /home/xyzuan/ancient

echo # Enviroment
export KBUILD_BUILD_USER="xyzuan"
export KBUILD_BUILD_HOST="xyzscape-dedicated"
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
export SELINUX_IGNORE_NEVERALLOWS=true

echo # Cleaning out Dir
rm -rf out/target

echo # Building ROM
. build/envsetup.sh
lunch ancient_lavender-userdebug
mka bacon -j8
