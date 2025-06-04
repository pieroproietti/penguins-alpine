#!/bin/sh
set -e

# Installa XFCE desktop environment
apk add xfce4 xfce4-terminal xfce4-screensaver

# Installa componenti opzionali utili
apk add xfce4-panel xfce4-session xfce4-settings xfce4-taskmanager
apk add xfce4-power-manager xfce4-notifyd thunar-volman

apk add lightdm lightdm-gtk-greeter
rc-update add lightdm default

apk add dbus
rc-update add dbus default
rc-service dbus start

apk add font-noto ttf-dejavu


