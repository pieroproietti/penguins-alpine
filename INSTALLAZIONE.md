# INSTALLAZIONE

```
setup-alpine
```
reboot

```
doas add bash-completion
doas setup-desktop
doas apk add git nano setxkbmap xrandr 
```

# clone
```
git clone https://github.com/pieroproietti/penguins-sidecar
cd penguins-sidecar
doas bin/setup-apkbuild
doas bin/setup-code
doas bin/setup-requirements
doas bin/setup-spice-vdagent
```
