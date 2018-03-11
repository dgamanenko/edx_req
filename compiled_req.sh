#!/usr/bin/env bash
tar -xvf edxapp.tar.gz
sudo rm -rf /edx/app/edxapp/venvs/edxapp
sudo mv ./edxapp /edx/app/edxapp/venvs/
sudo chown -R edxapp:edxapp /edx/app/edxapp/venvs/edxapp

