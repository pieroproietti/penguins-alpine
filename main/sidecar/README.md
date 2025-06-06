# sidecar-mkinitfs

Prima di procedere installare:

```
doas apk add util-linux-dev kmod-dev cryptsetup-dev linux-headers
```

## Attacca il sidecar alla moto

```bash
cd 
git clone https://gitlab.alpinelinux.org/alpine/mkinitfs 
```
- apri il  file: `sidecar-mkinitfs/initramfs-init.in` 

- cerca la dichiarazione di `myopts` ed aggiungi le variabili`:
```
alpinelivesquashfs
alpinelivelabel
cow_spacesize
```
- Copia ed incolla il file `sidecar.in` in `/sidecar-mkinitfs/mkinitfs.in`, seguendo le istruzioni nel codice stesso:

insert just after: `$MOCK mount -t tmpfs -o $rootflags tmpfs $sysroot`
