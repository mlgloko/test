# Hello World (.NRO) para Nintendo Switch

Proyecto mínimo en C usando **libnx** y **devkitPro** que muestra "Hello, World!" en la consola de texto.
**No necesitas instalar nada en tu PC**: el `.nro` se compila automáticamente con **GitHub Actions** usando el contenedor `devkitpro/devkita64`.

## Estructura
```text
.
├─ Makefile
├─ source/
│  └─ main.c
└─ .github/workflows/build.yml
```

## Cómo usarlo en GitHub (sin instalar nada)
1. Crea un repositorio nuevo en GitHub (por ejemplo, `hello-switch`).
2. Sube (drag & drop) los archivos de este ZIP a la raíz del repo o pulsa **Add file → Upload files**.
3. Ve a la pestaña **Actions** del repositorio; se ejecutará el flujo **build-switch-nro** automáticamente (o haz click en **Run workflow**).
4. Cuando el job termine, descarga el artifact **hello-world-nro**; dentro verás `hello-world.nro`.

## Probar en tu Nintendo Switch
1. Copia `hello-world.nro` a la carpeta `switch/` de tu microSD (por ejemplo `switch/hello-world/hello-world.nro`).
2. Abre el **Homebrew Menu (hbmenu)** y ejecútalo desde ahí.
   > Recuerda: ejecutar homebrew implica usar CFW/hbmenu; hazlo bajo tu responsabilidad.

## Personalización
- Cambia `APP_TITLE`, `APP_AUTHOR`, `APP_VERSION` en el *Makefile*.
- Si quieres icono propio, añade `icon.jpg` (256×256) y descomenta la línea `ICON` del *Makefile*.

## Licencia
Dominio público / úsalo como quieras.
