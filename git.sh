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

msg "Starting configurate git"

##----------------------------------------------------------##
# Git Identity
git config --global core.editor "nano"
git config --global user.name "Hoppless"
git config --global user.email "hoppless@proton.me"
git config --global credential.helper store

##----------------------------------------------------------##
# Git Alias
git config --global alias.c "commit -s"
git config --global alias.cam "commit --am"
git config --global alias.cm "commit"
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

##----------------------------------------------------------##
# Setup Change-id hooks
mkdir -p "$HOME"/.git-templates/hooks
git config --global init.templatedir "$HOME"/.git-templates
curl -Lo "$HOME"/.git-templates/hooks/commit-msg https://raw.githubusercontent.com/Hoppless/Scripts/main/commit-msg
chmod u+x "$HOME"/.git-templates/hooks/commit-msg
msg "Git configiration succesfully"
