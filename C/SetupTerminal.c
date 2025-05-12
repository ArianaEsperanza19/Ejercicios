// Nombre del archivo: SetupTerminal.c
// Author: Ariana
// Fecha: 2025-05-11
#include <stdio.h>  // Incluir la biblioteca estándar de entrada/salida
#include <stdlib.h>  // Incluir la biblioteca estándar de bibliotecas

int main() {
    system("sudo apt update && sudo apt upgrade -y");
    system("sudo apt-get upgrade -y");
    system("sudo apt install neofetch -y");
    system("sudo apt install tldr -y");
    system("sudo apt install zoxide -y");
    system("sudo apt install ranger -y");
    system("sudo apt install duf -y");
    system("sudo apt install ripgrep -y");
    system("sudo apt install btop -y");
    system("sudo apt-get install git -y");
    system("sudo apt install tmux -y");
    system("curl -fsSL https://deno.land/x/install/install.sh | sh -y");
    system("sudo apt install curl -y");
    system("sudo apt install npm nodejs -y");
    system("sudo apt install zathura -y");
    system("sudo apt install cmus -y");
    system("sudo apt-get install pandoc");
    system("sudo apt-get install texlive-latex-base texlive-latex-extra");
    printf("Instalados neofetch, tldr, zoxide, ranger, duf, ripgrep, btop, git, tmux, deno, curl, npm, nodejs, zathura, cmus, pandoc y latex\n");
    printf("Recuerda configurar zoxide, ranger y tmux\nInstala mediante la tienda Obsidian, Anki, Secretos, Rnote, Blanket, Syncthing, Lutris y Steam");

    return 0;  // Indicar que el programa terminó correctamente
}

