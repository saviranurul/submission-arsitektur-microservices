#!/bin/bash
# Build image dengan nama saviranurul/karsajobs-ui:latest
docker build -t saviranurul/karsajobs-ui:latest .

# login ke Github Package
echo $CR_PAT | docker login ghcr.io --username saviranurul --password-stdin

# Membuat nama image baru dari saviranurul/karsajobs-ui:latest menjadi ghcr.io/saviranurul/karsajobs-ui:latest dan sekaligus push ke Github Packages
docker tag saviranurul/karsajobs-ui:latest ghcr.io/saviranurul/karsajobs-ui:latest && docker push ghcr.io/saviranurul/karsajobs-ui:latest