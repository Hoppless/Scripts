#!/usr/bin/env bash
#
# Script Setup Git
# Copyright (C) 2023 a Hoppless <hoppless@proton.me>
#

msg() {
	echo
	echo -e "\e[1;32m$*\e[0m"
	echo
}

msg "[#] Starting configurate git"

##----------------------------------------------------------##
# Core editor
git config --global core.editor "nano"

##----------------------------------------------------------##
# Git Alias
msg "[#] Configurate alias config"
git config --global alias.c "commit -s"
git config --global alias.cam "commit --am"
git config --global alias.cm "commit"
git config --global alias.csm "commit -s -m"
git config --global alias.ca "cherry-pick --abort"
git config --global alias.cr "cherry-pick --signoff"
git config --global alias.p "push -f"
git config --global alias.cc "cherry-pick --continue"
git config --global alias.cs "cherry-pick --skip"
git config --global alias.cp "cherry-pick"
git config --global alias.r "revert"
git config --global alias.rc "revert --continue"
git config --global alias.ro "remote rm origin"
git config --global alias.ra "remote add origin"
git config --global alias.s "switch -c"
git config --global alias.b "branch"
git config --global alias.rh "reset --hard"
git config --global alias.ch "checkout"
git config --global alias.f "fetch"
git config --global alias.m "merge"

##----------------------------------------------------------##
# Setup Change-id hooks
msg "[#] Setup Change-id hooks"
mkdir -p ~/.git/hooks
git config --global core.hooksPath ~/.git/hooks
curl -Lo ~/.git/hooks/commit-msg http://review.lineageos.org/tools/hooks/commit-msg
chmod a+x ~/.git/hooks/commit-msg
clear && clear
msg "[✔️] Git configiration succesfully"
