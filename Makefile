#---------------------------------------------------------------------------------
# Minimal Makefile for Nintendo Switch homebrew using devkitPro + libnx
# Builds: hello-world.nro
#---------------------------------------------------------------------------------

TARGET        := hello-world
BUILD         := build
SOURCES       := source
INCLUDES      := include
DATA          :=
#ROMFS        := romfs

# NACP (metadata)
APP_TITLE     := Hello World
APP_AUTHOR    := YourName
APP_VERSION   := 1.0.0
# ICON        := icon.jpg   # optional 256x256 JPG; if not provided, a default icon is used

# Libraries
LIBS          := -lnx

# Include libnx build rules
include $(DEVKITPRO)/libnx/switch_rules
