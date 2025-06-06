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
git clone https://github.com/pieroproietti/penguins-sidecar
cd penguins-sidecar
doas cp bin/g4* /usr/local/bin/ # This is my configuration
doas bin/setup-code
doas bin/setup-requirements
doas bin/setup-spice-vdagent
# bash e bash-completion
doas add bash-completion
doas chsh -s /bin/bash artisan

# run as normal user
# Tastiera italian in X
tee ~/.bashrc << 'EOF' > /dev/null
setxkbmap it
EOF
g4artisan
bin/setup-apkbuild

```
