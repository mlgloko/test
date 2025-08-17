\
@echo off
REM Local build using Docker on Windows (PowerShell/CMD)
docker run --rm -v "%cd%":/project -w /project devkitpro/devkita64:latest ^
  bash -lc "dkp-pacman -Syu --noconfirm && dkp-pacman -S --needed --noconfirm switch-dev && make -j && ls -l *.nro || true"
echo.
echo Si todo fue bien, encontrarás el .nro en esta carpeta.
pause
