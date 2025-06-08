# Penguins' eggs sidecar per Alpine Linux

Repository per gestire facilmente il sidecar di penguins' eggs con Alpine Linux.

## Struttura

```
```ascii
penguins-sidecar/
├── main/
│   ├── penguins-eggs/
│   │   ├── APKBUILD
│   │   ├── README.md
│   │   ├── clean
│   │   ├── penguins-eggs.post-install
│   │   └── piero.proietti@gmail.com-68452915.rsa.pub
│   ├── sidecar/
│   │   ├── README.md
│   │   ├── clean
│   │   ├── initramfs-init
│   │   ├── initramfs-init-original
│   │   └── sidecar.in
│   └── README.md
├── INSTALLAZIONE.md
└── README.md
```

## PRELIMINARI
* [Installazione Alpine con strumenti di sviluppo](./INSTALLAZIONE.md)

## Come Funziona il sidecar

Il sidecar:
1. Cerca un dispositivo con la label specificata
2. Monta il dispositivo live
3. Monta il filesystem.squashfs come layer read-only
4. Crea un overlay con tmpfs per le modifiche
5. Configura il sistema per il boot live

## Attacca il sidecar alla moto

```bash
git clone https://gitlab.alpinelinux.org/alpine/mkinitfs 
```

Duplica il `initramfs-init-original` PULITO in `initramfs-init`:
```
cp main/sidecar/initramfs-init-original main/sidecar/initramfs-init
```

Appllica le modifice descritte in `sidecar.in`, quindi copia `initramfs-init` in
`/usr/share/mkinitfs/initramfs-init`:

```
doas cp main/sidecar/initramfs-init /usr/share/mkinitfs/initramfs-init
```

## Uso del sidecar
Usa questi parametri di boot, esempio:
```
alpinelivelabel=colibri alpinelivesquashfs=/mnt/live/filesystem.squashfs
```
### Parametri Boot Supportati

- `alpinelivelabel=LABEL` - Label del dispositivo live (es: colibri)
- `alpinelivesquashfs=PATH` - Percorso al filesystem.squashfs (es: `/mnt/live/filesystem.squashfs`)
- `cow_spacesize=512M - Dimensione spazio COW
