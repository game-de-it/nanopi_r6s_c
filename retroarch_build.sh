#!/bin/sh


sudo apt-get -y update
sudo apt-get -y install git build-essential ccache joystick spirv-* glslang* vulkan-* wayland-protocols 
git clone https://github.com/libretro/RetroArch.git retroarch
sudo apt-get -y build-dep retroarch
export PATH=/usr/lib/ccache/bin/:$PATH
cd retroarch
./configure --disable-neon --disable-qt --enable-alsa --enable-udev --disable-opengl1 --enable-opengl --enable-opengles \
 --enable-opengles3 --enable-opengles3_2 --enable-wayland --disable-x11 --enable-zlib --enable-freetype --disable-discord \
 --disable-vg --disable-sdl --enable-sdl2 --disable-vulkan --disable-vulkan_display --disable-ffmpeg --enable-kms --disable-sixel
make clean
make -j7

