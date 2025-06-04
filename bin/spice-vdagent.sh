#!/bin/sh
set -e

# spice-vdagent per la condivisione degli appunti e il ridimensionamento della finestra
apk add spice-vdagent
rc-update add spice-vdagent default
rc-service spice-vdagent start
# Attiva il servizio spice-vdagent
if [ -f /etc/xdg/autostart/spice-vdagent.desktop ]; then
    sed -i 's/OnlyShowIn=GNOME;XFCE;/OnlyShowIn=GNOME;XFCE;X-Cinnamon;/' /etc/xdg/autostart/spice-vdagent.desktop
else
    echo "File /etc/xdg/autostart/spice-vdagent.desktop non trovato."
fi  
