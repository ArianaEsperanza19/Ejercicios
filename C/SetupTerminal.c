// Nombre del archivo: SetupTerminal.c
// Author: Ariana
// Fecha: 2025-05-11
#include <stdio.h>  // Incluir la biblioteca estándar de entrada/salida
#include <stdlib.h>  // Incluir la biblioteca estándar de bibliotecas

int main() {
    system("sudo apt update && sudo apt upgrade -y");
    system("sudo apt-get upgrade -y");
    system("sudo apt install eza");
    system("sudo apt install tldr");
    system("sudo apt install zoxide");
    system("sudo apt install ranger");
    system("sudo apt install duf");
    system("sudo apt install ripgrep");
    system("sudo apt install btop");
    system("sudo apt-get install git");
    system("sudo apt install tmux");
    system("curl -fsSL https://deno.land/x/install/install.sh | sh -y");
    system("sudo apt install curl");
    system("sudo apt install npm nodejs");
    system("sudo apt install zathura");
    system("sudo apt install cmus");
    system("sudo apt-get install pandoc");
    system("sudo apt-get install texlive-latex-base texlive-latex-extra latexmk");
    printf("#------------------------------------------------------------------------------------------------------#\n");
    printf("Instalados eza, tldr, zoxide, ranger, duf, ripgrep, btop, git, tmux, deno, curl, npm, nodejs, zathura, cmus, pandoc y latex\n");
    printf("Recuerda configurar zoxide, ranger y tmux\nInstala mediante la tienda Obsidian, Anki, Secretos, Rnote, Blanket, Syncthing, Lutris y Steam");

    return 0;  // Indicar que el programa terminó correctamente
}

