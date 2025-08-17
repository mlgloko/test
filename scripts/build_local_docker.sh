#!/usr/bin/env bash
set -euo pipefail
# Local build using Docker (no instalación local de devkitPro requerida)
docker run --rm -v "$PWD":/project -w /project devkitpro/devkita64:latest   bash -lc 'dkp-pacman -Syu --noconfirm && dkp-pacman -S --needed --noconfirm switch-dev && make -j && ls -l *.nro || true'
echo
echo "Si todo fue bien, encontrarás el .nro en este directorio."
