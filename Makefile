# Proyecto mínimo de Homebrew para Nintendo Switch (libnx)
# Requiere devkitPro + libnx instalados y variables de entorno DEVKITPRO/DEVKITA64 configuradas.

# Nombre del binario (sin extensión)
TARGET := hello-switch

# Carpetas
BUILD := build
SOURCES := source
INCLUDES := include

# Metadatos del NRO
APP_TITLE := Hola Switch
APP_AUTHOR := Ejemplo
APP_VERSION := 1.0.0

# Icono y RomFS son opcionales; descomenta si los añades
# ICON := icon.jpg
# ROMFS := romfs

# Flags adicionales opcionales
# NROFLAGS += --icon=$(ICON)
# NACPFLAGS += --title="$(APP_TITLE)" --author="$(APP_AUTHOR)" --version=$(APP_VERSION)

# Debe ir al final
include $(DEVKITPRO)/libnx/switch_rules
