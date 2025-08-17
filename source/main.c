#include <switch.h>
#include <stdio.h>

int main(int argc, char* argv[]) {
    consoleInit(NULL);  // Initialize text console

    printf("\x1b[1;1HHello, World!");  // Top-left corner
    printf("\nPulsa + para salir.");

    while (appletMainLoop()) {
        hidScanInput();
        u64 kDown = hidKeysDown(CONTROLLER_P1_AUTO);
        consoleUpdate(NULL);     // Submit a new frame

        if (kDown & KEY_PLUS) break;
    }

    consoleExit(NULL);
    return 0;
}
