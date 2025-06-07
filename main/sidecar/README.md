# sidecar-mkinitfs

Prima di procedere installare:

```
doas apk add util-linux-dev kmod-dev cryptsetup-dev linux-headers
```

```
cp main/sidecar/initramfs-init-original main/sidecar/initramfs-init
```

Apply the sidecar.in

```
doas cp main/sidecar/initramfs-init /usr/share/mkinitfs/initramfs-init
```