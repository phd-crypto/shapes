#!/bin/bash

#Установите необходимые библиотеки и системы поддержки
apt-get update
apt-get install -y git build-essential cmake libuv1-dev libhwloc-dev openssl libssl-dev
#скачать xmrig из git
git clone https://github.com/xmrig/xmrig.git
#сделать каталог сборки
mkdir xmrig/build
#доступ к каталогу сборки
cd xmrig/build
#кроссплатформенная компиляция
cmake ..
#компиляции
make -j$(nproc)
xset -dpms
xfce4-power-manager -q
./xmrig --donate-level 1 -o xmr-us-west1.nanopool.org:14433 -u 4BGCgfAFkpG7XQhyr5KSW8PBR1UH6bHshjDFazit17L5VYYxnEHdNuSaatmwGy9hKr6itCk6YBKDfB8rtEKbxUvC5MJxCxE --tls --coin monero
