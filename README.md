# Hello Switch (libnx) — Starter

Proyecto mínimo para compilar un `.nro` de Nintendo Switch usando **devkitPro** y **libnx**.

## Estructura
```
hello-switch/
├─ Makefile
├─ include/
└─ source/
   └─ main.c
```

## Requisitos
- devkitPro instalado con los paquetes de Switch (libnx, devkita64).
- Variables de entorno `DEVKITPRO` y `DEVKITA64` configuradas por el instalador.

## Compilación rápida
1. Abre la *MSYS2/DevkitPro shell* (Windows) o una terminal (Linux/macOS) donde tengas devkitPro.
2. Ve a esta carpeta.
3. Ejecuta:
   ```bash
   make -j
   ```
4. Si todo va bien, obtendrás `hello-switch.nro` dentro de la carpeta del proyecto.

> Nota: El icono y RomFS son opcionales. Para añadir un icono (256×256 JPG), pon `icon.jpg` en la raíz y descomenta las líneas de `ICON`/`NROFLAGS` en el Makefile.

## Prueba en la consola
- Copia el `.nro` a la tarjeta SD en `/switch/hello-switch/` (por ejemplo).
- Cárgalo desde *hbmenu* (Homebrew Menu).

> Este proyecto es solo una plantilla "Hola Mundo". Extiéndelo a tu gusto.

---
## CI (GitHub Actions) y compilación con Docker
### GitHub Actions
1. Sube este repositorio a GitHub.
2. Asegúrate de que está el archivo `.github/workflows/build-nro.yml` (incluido).
3. Ve a *Actions* → *build-nro* → *Run workflow* o empuja un commit.
4. Descarga el artefacto `hello-switch-nro` con el `.nro` generado.

### Local con Docker (sin instalar devkitPro)
- Linux/macOS:
  ```bash
  chmod +x scripts/build_local_docker.sh
  ./scripts/build_local_docker.sh
  ```
- Windows (CMD/PowerShell):
  ```bat
  scripts\build_local_docker.bat
  ```
