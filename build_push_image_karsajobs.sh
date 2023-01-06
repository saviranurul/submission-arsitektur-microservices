#!/bin/bash
# Build image dengan nama saviranurul/karsajobs:latest
docker build -t saviranurul/karsajobs:latest .

# login ke Github Package
echo $CR_PAT | docker login ghcr.io --username saviranurul --password-stdin

# Membuat nama image baru dari saviranurul/karsajobs:latest menjadi ghcr.io/saviranurul/karsajobs:latest dan sekaligus push ke Github Packages
docker tag saviranurul/karsajobs:latest ghcr.io/saviranurul/karsajobs:latest && docker push ghcr.io/saviranurul/karsajobs:latest