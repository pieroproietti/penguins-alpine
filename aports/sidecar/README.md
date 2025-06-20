# sidecar-mkinitfs

Prima di procedere installare:

```
doas apk add util-linux-dev kmod-dev cryptsetup-dev linux-headers
```

```
cp alpine/sidecar/initramfs-init-original alpine/sidecar/initramfs-init
```

Apply the sidecar.in

```
doas cp alpinen/sidecar/initramfs-init /usr/share/mkinitfs/initramfs-init
```