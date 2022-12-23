#!/bin/sh
# Membuat docker image dengan nama image item-app:v1
docker build -t item-app:v1 .

# Pembatas untuk output docker images
echo "############################## Melihat Daftar Image di Lokal ##############################"

# Melihat daftar image di lokal
docker images

# Membuat nama image baru dari item-app:v1 ghcr.io/saviranurul/docker-microservices:v1
docker tag item-app:v1 ghcr.io/saviranurul/docker-microservices:v1

# Pembatas untuk output docker images
echo "######################## Melihat Kembali Daftar Image di Lokal (Tag) ########################"

# Melihat kembali daftar image di lokal setelah menambahkan tag baru
docker images

# Menggunakan variabel PAT dan login ke github packages via terminal
#echo $CR_PAT | docker login ghcr.io --username saviranurul --password-stdin
echo $CR_PAT | docker login ghcr.io --username saviranurul --password-stdin

# Mengunggah image ke github packages
docker push ghcr.io/saviranurul/docker-microservices:v1