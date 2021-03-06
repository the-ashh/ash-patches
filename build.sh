#!/bin/bash

gpg --receive-keys ABAF11C65A2970B130ABE3C479BE3E4300411886 647F28654894E3BD457199BE38DBBDC86092693E A2FF3A36AAA56654109064AB19802F8B0D70FC30 8657ABB260F056B1E5190839D9C4D26D0E604491 CEACC9E15534EBABB82D3FA03353C9CEF108B584
mkdir -p output

git submodule init
git submodule update

cd linux-zen
MAKEFLAGS="-j$(nproc)" makepkg -s --noconfirm

cd ../edk2
MAKEFLAGS="-j$(nproc)" makepkg -s --noconfirm

cd ../qemu
MAKEFLAGS="-j$(nproc)" makepkg -s --noconfirm

cd ../ash-keyring
makepkg -sf --noconfirm

cd ../
cp */*.pkg.tar.zs* output