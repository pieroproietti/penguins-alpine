doas apk add flatpak

# Configura Flathub
doas flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Installa VS Code
doas flatpak install flathub com.visualstudio.code

# Crea uno script di avvio per VS Code
doas tee /usr/local/bin/code << 'EOF' > /dev/null
#!/bin/sh
exec flatpak run com.visualstudio.code "$@"
EOF


# Rendi eseguibile lo script
doas chmod +x /usr/local/bin/code

# Aggiungi VS Code al menu delle applicazioni
doas tee /usr/share/applications/code.desktop << 'EOF' > /dev/null
[Desktop Entry]
Name=Visual Studio Code
Comment=Code Editing. Redefined.
Exec=code
Icon=com.visualstudio.code
Type=Application
Categories=Development;IDE;
Terminal=false
StartupNotify=true
MimeType=text/plain;
Keywords=code;editor;ide;development;
EOF
