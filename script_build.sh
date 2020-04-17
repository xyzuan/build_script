#!/bin/bash

# Welcome Page
echo ==============================
echo  Welcome to xyzuanWorkstation
echo ==============================

echo # Mounting my Workspace
cd /home/xyzuan/havoc

echo # Enviroment
export KBUILD_BUILD_USER="xyzuan"
export KBUILD_BUILD_HOST="xyzscape-dedicated"
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
export SELINUX_IGNORE_NEVERALLOWS=true

echo # Cleaning Out Dir
rm -rf out/target

echo # Building a rom
. build/envsetup.sh
lunch havoc_lavender-userdebug
mka bacon -j8
