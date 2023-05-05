#!/bin/bash

PACKAGE_NAME="ros-galactic-rosidl-generator-c"
DEPENDENCIES=$(apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances --no-pre-depends $PACKAGE_NAME | grep "^\w*ros-galactic")

cd deb

for DEPENDENCY in $DEPENDENCIES; do
  echo "Downloading $DEPENDENCY"
  apt-get download $DEPENDENCY 2>/dev/null
done
