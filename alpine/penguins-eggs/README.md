# APKBUILD penguins-eggs

abuild checksum
abuild

L'utente deve essere parte del gruppo abuild:

`adduser artisan abuild`

La chiave usata è: 
- privata: piero.proietti@gmail.com-68452915.rsa (solo per lo sviluppatore ) va posta in `~/.agbuild` insiame alla corrisponedente chiave pubblica;
- pubblica: piero.proietti@gmail.com-68452915.rsa.pub (per usare i pacchetti)  va posta in `/etc/apk/keys`.

## fuse
Abilitare il modulo fuse:
```
echo fuse > /etc/modules-load.d/fuse.conf
```

## setup-me
```
#!/bin/sh
rm $HOME/.abuild -rf
mkdir $HOME/.abuild
scp -r root@192.168.1.2:/eggs/alpine /tmp
cp /tmp/alpine/piero.proietti@gmail.com-68452915.rsa.pub $HOME/.abuild
cp /tmp/alpine/private/piero.proietti@gmail.com-68452915.rsa $HOME/.abuild
tee $HOME/.abuild/abuild.conf << 'EOF' > /dev/null
PACKAGER="Piero Proietti <piero.proietti@gmail.com>"
MAINTAINER="$PACKAGER"
PACKAGER_PRIVKEY="$HOME/.abuild/piero.proietti@gmail.com-68452915.rsa"
DESTDIR="$HOME/packages/main"
DLDIR="$HOME/sources"
EOF
doas cp /tmp/alpine/private/piero.proietti@gmail.com-68452915.rsa /etc/apk/keys
rm /tmp/alpine -rf

```