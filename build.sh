#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1
rpm-ostree install mpv yt-dlp helix

rpm-ostree uninstall sddm-kcm sddm kde-settings-sddm sddm-breeze akonadi-server akonadi-server-mysql amd-gpu-firmware \
cockpit-bridge cockpit-machines cockpit-networkmanager cockpit-ostree cockpit-pcp cockpit-podman cockpit-selinux cockpit-storaged cockpit-system \
plasma-browser-integration fedora-chromium-config-kde mariadb-server mariadb-server-utils mariadb-gssapi-server mariadb-cracklib-password-check mariadb-backup \
mariadb-common mariadb-errmsg mariadb mariadb-connector-c qt6-qtbase-mysql perl-DBD-MariaDB mariadb-connector-c-config \
rocm-comgr rocm-runtime rocminfo rocm-device-libs rocm-hip rocm-opencl hipcc plymouth plymouth-core-libs plymouth-graphics-libs plymouth-plugin-label \
plymouth-plugin-two-step plymouth-scripts plymouth-system-theme plymouth-theme-spinner wireguard-tools firewalld firewalld-filesystem firewall-config \
python3-firewall python3-nftables toolbox
 
sudo systemctl set-default multi-user.target
