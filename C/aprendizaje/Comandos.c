// Nombre del archivo: Comandos.c
// Author: ArianaEsperanza19
// Fecha: 2025-05-10
#include <stdio.h>  // Incluir la biblioteca estándar de entrada/salida
#include <string.h>  // Incluir la biblioteca de manejo de cadenas
#include <stdlib.h>  // Incluir la biblioteca estándar de bibliotecas

int main() {
    system("sudo apt install zoxide");
    system("sudo apt install btop");
    system("sudo apt install duf");
    system("sudo apt-get install git");
    system("sudo apt install ranger");
    system("sudo apt install tldr");
    system("sudo apt install tmux");
    system("curl -fsSL https://deno.land/x/install/install.sh | sh -y");
    system("sudo apt install zathura -y");
    system("sudo apt install cmus -y");
    printf("Instalados zoxide, btop, duf, git, ranger, tldr, tmux y deno\n");
    printf("Recuerda configurar zoxide, ranger y tmux\nInstala mediante la tienda Obsidian, Anki, Rnote, Blanket, Lutris y Steam");

    return 0;  // Indicar que el programa terminó correctamente
}

