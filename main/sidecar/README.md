# sidecar-mkinitfs

Prima di procedere installare:

```
doas apk add util-linux-dev kmod-dev cryptsetup-dev linux-headers
```

## Attacca il sidecar alla moto

```bash
#cd ~/penguins-sidecar
#git clone https://gitlab.alpinelinux.org/alpine/mkinitfs 
```
- apri i  file: 
```
cd ~/penguins-sidecar
cp /usr/share/mkinitfs/initramfs-init main/sidecar/changeme.sh
code main/sidecar/sidecar.in main/sidecar/changeme.sh
```

e segui le istruzioni.

Alla fine:
```
doas mv main/sidecar/changeme.sh /usr/share/mkinitfs/initramfs-init
```


