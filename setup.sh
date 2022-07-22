clear
echo 'this will setup void linux for you' && echo 'this is for nvidia only, if you do not use nvidia; press ctrl + c asap'

sleep 5s

clear
echo 'installing repos..'
xbps-install -y void-repo-multilib void-repo-nonfree void-repo-multilib-nonfree

sleep 1s

xbps-install -S

echo 'repos done'

sleep 2s

echo 'installing packages'
xbps-install -y wget xorg libX11-devel libXinerama-devel libXft-devel nvidia firefox pulseaudio wine wine-32bit libpulseaudio-32bit nvidia-libs-32bit vulkan-loader vulkan-loader-32bit freetype-32bit gnutls-32bit libgcc-32bit libXi-32bit 

sleep 5s

echo 'completed this, thanks for using my script'
