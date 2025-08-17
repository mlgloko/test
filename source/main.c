#include <switch.h>
#include <stdio.h>

int main(int argc, char* argv[]) {
    // Inicializa la consola en la pantalla.
    consoleInit(NULL);

    printf("¡Hola, Nintendo Switch!\\n");
    printf("\\nPulsa + para salir.\\n");

    // Bucle principal de la app
    while (appletMainLoop()) {
        // Lee entradas de los mandos
        hidScanInput();
        u64 kDown = hidKeysDown(CONTROLLER_P1_AUTO);

        // Salir con el botón +
        if (kDown & KEY_PLUS) break;

        // Dibuja el frame
        consoleUpdate(NULL);
    }

    consoleExit(NULL);
    return 0;
}
