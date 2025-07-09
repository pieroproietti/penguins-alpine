# sidecar-mkinitfs

Facciamo un backup di `initramfs-init` in initramfs-init-original
```
cp /usr/share/mkinitfs/initramfs-init ~/penguins-alpine/aports/sidecar/initramfs-init-original
```

Quindi, ci copiamo `initramfs-init` per modificarlo:
```
cp ~/penguins-alpine/aports/sidecar/initramfs-init-original ~/penguins-alpine/aports/sidecar/initramfs-init
```

ed andiamo ad aggiungerervi  il `sidecar.in`.

A questo punto, non ci resta che sostituire `/usr/share/mkinitfs/initramfs-init` con la nostra modifica.

```
doas cp ~/penguins-alpine/aports/sidecar/initramfs-init /usr/share/mkinitfs/initramfs-init
```