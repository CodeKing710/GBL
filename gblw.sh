#!/bin/bash

# Check admin
[[ $(sfc 2>&1 | tr -d '\0') =~ SCANNOW ]] && wrap || echo "Requires Admin rights!"

# Generate wrapper
wrap() {
  [ ! -d /usr/local ] && \
  mkdir /usr/local && \
  mkdir /usr/local/bin
}