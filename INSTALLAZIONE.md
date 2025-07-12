# INSTALLAZIONE

```
setup-alpine
```
reboot, riavvia e prosegui...

```
# Desktop
doas setup-desktop
doas apk add git nano
```

# clona il sidecar
```
git clone https://github.com/pieroproietti/penguins-alpine
cd penguins-alpine

# copia ed esegui uno per uno
doas bin/setup-code
doas cp bin/g4* /usr/local/bin/ # This is my configuration
doas bin/setup-spice-vdagent

# bash e bash-completion
doas apk add bash-completion
doas chsh -s /bin/bash artisan
doas apk add setxkbmap xdg-user-dirs
doas apk add libc6-compat


# run as normal user
# Tastiera italian in X
tee ~/.bashrc << 'EOF' > /dev/null
setxkbmap it
EOF
g4artisan
bin/setup-apkbuild
```
