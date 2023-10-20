#!/bin/bash

echo "============Parsec Remote Viewer Installer============"
echo "---------------------by: Raguito----------------------"
user=$(whoami)
if [ $user != root ]
then
	echo "You must be root to run this!"
	exit
else
	echo "Updating system"
	apt update
	apt upgrade 
	echo "Downloading dependencies"
	
	wget http://mirrors.kernel.org/ubuntu/pool/universe/a/aom/libaom0_1.0.0.errata1-3build1_amd64.deb 
	wget http://security.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/libavutil56_4.2.7-0ubuntu0.1_amd64.deb 
	wget http://mirrors.kernel.org/ubuntu/pool/universe/c/codec2/libcodec2-0.9_0.9.2-2_amd64.deb 
	wget http://security.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/libswresample3_4.2.7-0ubuntu0.1_amd64.deb
	wget http://security.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx6_1.8.2-1ubuntu0.2_amd64.deb
	wget http://security.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp6_0.6.1-2ubuntu0.20.04.3_amd64.deb
	wget http://mirrors.kernel.org/ubuntu/pool/universe/x/x264/libx264-155_0.155.2917+git0a84d98-2_amd64.deb
	wget http://mirrors.kernel.org/ubuntu/pool/universe/x/x265/libx265-179_3.2.1-1build1_amd64.deb
	wget http://security.ubuntu.com/ubuntu/pool/universe/f/ffmpeg/libavcodec58_4.2.7-0ubuntu0.1_amd64.deb
	wget http://mirrors.kernel.org/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8_8c-2ubuntu8_amd64.deb
	wget http://security.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.0.3-0ubuntu1.20.04.3_amd64.deb

	echo "Installing dependencies"
	apt install ./libaom0_1.0.0.errata1-3build1_amd64.deb ./libavutil56_4.2.7-0ubuntu0.1_amd64.deb ./libcodec2-0.9_0.9.2-2_amd64.deb ./libswresample3_4.2.7-0ubuntu0.1_amd64.deb ./libvpx6_1.8.2-1ubuntu0.2_amd64.deb ./libwebp6_0.6.1-2ubuntu0.20.04.3_amd64.deb ./libx264-155_0.155.2917+git0a84d98-2_amd64.deb ./libx265-179_3.2.1-1build1_amd64.deb ./libavcodec58_4.2.7-0ubuntu0.1_amd64.deb ./libjpeg8_8c-2ubuntu8_amd64.deb 

	echo "Installing Parsec"
	wget https://builds.parsec.app/package/parsec-linux.deb
	apt install ./parsec-linux.deb

	echo "Cleaning up"
	rm ./*.deb
fi
