#!/bin/sh -ex
echo 'installing repositories..'
xbps-install -Sy void-repo-multilib void-repo-nonfree void-repo-multilib-nonfree
echo 'installation of repositories complete, installing packages'
xbps-install -Sy wget xorg libX11-devel libXinerama-devel libXft-devel nvidia firefox pulseaudio wine wine-32bit libpulseaudio-32bit nvidia-libs-32bit vulkan-loader vulkan-loader-32bit freetype-32bit gnutls-32bit libgcc-32bit libXi-32bit || exit 1
echo 'complete'
