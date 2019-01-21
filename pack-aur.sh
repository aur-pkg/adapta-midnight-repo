#!/bin/bash
mkdir -p pkg/build && cp pkg/PKGBUILD pkg/build/ && cd pkg/build
makepkg -ACcs