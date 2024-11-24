#!/usr/bin/env bash

# Script to turn OpenSUSE 15.5 to vicibox 11.01
# Copyright (C) 2024 Ankush More (ankushitguy@gmail.com)
# Permission to copy and modify is granted under the foo license
# Last revised 2024-11-25


# get the list if repos
# zypper lr | awk -F'|' '{gsub(/ /, "", $0); if($4=="Yes") print $2}'
################################################


#
#Add vicidial repos

sudo zypper addrepo --refresh --keep-packages --no-gpgcheck https://download.opensuse.org/repositories/home:/vicidial:/asterisk-16/openSUSE_Leap_15.5/ openSUSE-Leap-15.5-ViciDial-Ast16

sudo zypper addrepo --refresh --keep-packages --no-gpgcheck https://download.opensuse.org/repositories/home:/vicidial:/vicibox/openSUSE_Leap_15.5/ openSUSE-Leap-15.5-ViciDial-ViciBox

sudo zypper addrepo --refresh --keep-packages --no-gpgcheck https://download.opensuse.org/repositories/home:/vicidial/openSUSE_Leap_15.5/ openSUSE-Leap-15.5-ViciDial

sudo zypper addrepo --refresh --keep-packages --no-gpgcheck https://download.opensuse.org/repositories/devel:/languages:/perl/15.5/ openSUSE-Leap-15.5-PERL

# Remove the repository
# zypper removerepo openSUSE-Leap-15.5-ViciDial-Ast16 openSUSE-Leap-15.5-ViciDial-ViciBox openSUSE-Leap-15.5-ViciDial openSUSE-Leap-15.5-PERL
#
#

# Zypper refresh
#
