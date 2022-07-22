#!/bin/sh
clear
echo 'this will setup void linux for you' && echo 'this is for nvidia only, if you do not use nvidia; press ctrl + c asap'
sleep 3
echo 'installing repos..'
xbps-install -y void-repo-multilib void-repo-nonfree void-repo-multilib-nonfree || exit 1
xbps-install -S || exit 1
echo 'repos done, installing packages'
xbps-install -y wget xorg libX11-devel libXinerama-devel libXft-devel nvidia firefox pulseaudio wine wine-32bit libpulseaudio-32bit nvidia-libs-32bit vulkan-loader vulkan-loader-32bit freetype-32bit gnutls-32bit libgcc-32bit libXi-32bit || exit 1
echo 'completed this, thanks for using my script'
exit 0
