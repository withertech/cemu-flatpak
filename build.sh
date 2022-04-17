#!/bin/bash
sudo flatpak-builder --install-deps-from=flathub --force-clean --gpg-sign=597347D1434D8E68B3D72E71A892A7123B116051 --repo=repo builddir info.cemu.Cemu.json
flat-manager-client push --commit --publish $(flat-manager-client create https://repo.withertech.com/flatpak/api/ main) repo/
