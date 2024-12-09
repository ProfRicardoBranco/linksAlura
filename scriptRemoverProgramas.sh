#!/bin/bash




# Lista de programas a serem removidos
programas=(
    avahi-autoipd
    avahi-daemon
    avahi-utils
    celluloid
    drawing
    hexchat
    hypnotix
    simple-scan
    transmission-common
    transmission-gtk
    warpinator
)

# Remove os programas especificados
for programa in "${programas[@]}"; do
    if dpkg -l | grep -q "$programa"; then
        echo "Removendo $programa..."
        sudo apt-get purge -y "$programa"
    else
        echo "$programa não está instalado."
    fi
done

# Remove pacotes não necessários
echo "Removendo pacotes não necessários..."
sudo apt-get autoremove -y

echo "Processo concluído."

# Copiar perfil para a pasta skel
sudo cp -a ~/.* /etc/skel
sudo cp -a ~/ /etc/skel
