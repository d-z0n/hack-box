#!/bin/bash
docker build -f Dockerfile -t kali .
docker run -it --rm \
  --cap-add=NET_RAW \
  --cap-add=NET_ADMIN \
  -v $(pwd)/results:/notes \
  kali
