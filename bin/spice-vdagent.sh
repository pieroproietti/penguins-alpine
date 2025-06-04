#!/bin/sh
set -e

# spice-vdagent per la condivisione degli appunti e il ridimensionamento della finestra
apk add spice-vdagent
rc-update add spice-vdagent default

# Abilita il servizio di gestione della sessione
rc-update add xfce4-session default




