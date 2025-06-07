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
doas cp main/sidecar/changeme.sh /usr/share/mkinitfs/initramfs-init
```

TROVA questa riga

$MOCK mount -t tmpfs -o $rootflags tmpfs $sysroot

```
# ======================= INIZIO BLOCCO SIDECAR DI INIEZIONE =======================
# Sostituiamo il semplice mount di tmpfs con la nostra logica di overlay.

ebegin "Penguins' eggs: Preparing overlay filesystem for apk"

# 1. Trova il dispositivo live
devicelive=$(findfs "LABEL=${KOPT_alpinelivelabel}")
if [ -z "$devicelive" ]; then
    eend 1 "Live media with LABEL=${KOPT_alpinelivelabel} not found!" && /bin/busybox sh
fi

# 2. Carica i moduli e crea le directory
modprobe -a iso9660 squashfs overlay
mkdir -p /mnt /media/root-ro /media/root-rw/work /media/root-rw/root "$sysroot"

# 3. Esegui la catena di montaggio
mount -t iso9660 "${devicelive}" /mnt
if [ $? -ne 0 ]; then eend 1 "Failed to mount ${devicelive}" && /bin/busybox sh; fi

mount -t squashfs "/mnt${KOPT_alpinelivesquashfs}" /media/root-ro
if [ $? -ne 0 ]; then eend 1 "Failed to mount squashfs" && /bin/busybox sh; fi

mount -t tmpfs root-tmpfs /media/root-rw
if [ $? -ne 0 ]; then eend 1 "Failed to mount tmpfs for overlay" && /bin/busybox sh; fi

mkdir -p /media/root-rw/work /media/root-rw/root

mount -t overlay overlay -o lowerdir=/media/root-ro,upperdir=/media/root-rw/root,workdir=/media/root-rw/work "$sysroot"
if ! mountpoint -q "$sysroot"; then
    eend 1 "Failed to mount overlayfs on $sysroot" && /bin/busybox sh
fi

# 4. Pulizia
umount /mnt
eend 0 "Overlay ready for apk."
# ======================= FINE BLOCCO SIDECAR DI INIEZIONE =======================
```