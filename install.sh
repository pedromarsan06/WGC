#!/bin/bash

# Caminho do comando
CMD_DIR="$HOME/bin"
CMD_FILE="$CMD_DIR/wgc"
SRC_FILE="main.py"  # o script Python que você já tem

# Cria a pasta $HOME/bin se não existir
mkdir -p "$CMD_DIR"

# Copia o script para $HOME/bin/wgc
cp "$SRC_FILE" "$CMD_FILE"

# Dá permissão de execução
chmod +x "$CMD_FILE"

# Verifica se $HOME/bin já está no PATH
if ! echo "$PATH" | grep -q "$HOME/bin"; then
    echo 'export PATH=$PATH:$HOME/bin' >> "$HOME/.bashrc"
    source "$HOME/.bashrc"
fi

echo "Instalação concluída! Agora você pode usar o comando:"
echo "wgc -d tgit"
echo "wgc -d build"
echo "wgc -git"
