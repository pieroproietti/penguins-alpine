# sidecar-mkinitfs

Prima di procedere installare:

```
doas apk add util-linux-dev kmod-dev cryptsetup-dev linux-headers
```

## Attacca il sidecar alla moto

```bash
cd ~/penguins-sidecar
git clone https://gitlab.alpinelinux.org/alpine/mkinitfs 
```
- apri il  file: 
```
cp /usr/share/mkinitfs/initramfs-init /tmp/changeme.sh
code main/sidecar/sidecar.in /tmp/initramfs-init
```
` e segui le istruzioni