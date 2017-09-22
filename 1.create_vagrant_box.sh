#!/bin/bash

set -e

export PACKER_LOG=1
rm packer_virtualbox-iso_virtualbox.box || true
./packer/packer_1.0.0_windows_amd64/packer.exe build -only virtualbox-iso ./packer/packer.json
#vagrant box remove vagrant_machine || true
#vagrant box add vagrant_machine packer_virtualbox-iso_virtualbox.box