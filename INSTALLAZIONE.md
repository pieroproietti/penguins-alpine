# INSTALLAZIONE

```
setup-alpine
```
reboot, riavvia e resto...

```
doas add bash-completion
doas setup-desktop
doas apk add git nano
doas chsh -s /bin/bash artisan
```

# clone
```
git clone https://github.com/pieroproietti/penguins-sidecar
cd penguins-sidecar
doas cp bin/g4* /usr/local/bin/ # This is my configuration
doas bin/setup-code
doas bin/setup-requirements
doas bin/setup-spice-vdagent

# run as normal user
g4artisan
bin/setup-apkbuild

```
