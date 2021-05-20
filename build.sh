#!/bin/bash

mkdir output

cd linux-zen
makepkg -s --noconfirm

cd ../edk2
makepkg -s --noconfirm

cd ../qemu
makepkg -s --noconfirm

cd ..
mv */*.pkg.tar.zst ./output/