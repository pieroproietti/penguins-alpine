# Penguins' eggs sidecar per Alpine Linux

Repository per gestire facilmente il sidecar di penguins' eggs con Alpine Linux.

## Struttura

```
penguins-sidecar/
├── README.md
└── sidecar.in 
```
## Come Funziona il sidecar

Il sidecar:
1. Cerca un dispositivo con la label specificata
2. Monta il dispositivo live
3. Monta il filesystem.squashfs come layer read-only
4. Crea un overlay con tmpfs per le modifiche
5. Configura il sistema per il boot live

## Monta il sidecar alla moto

```bash
git clone https://gitlab.alpinelinux.org/alpine/mkinitfs 
```
- apri i file: `/mkinitfs/mkinitfs.in` 

- cerca la dichiarazione di `myopt` ed aggiungi le variabili`:
```
alpinelivesquashfs
alpinelivelabel
cow_spacesize
```
- Copia ed incolla il file `sidecar.in` in `/mkinitfs/mkinitfs.in`, seguendo le istruzioni nel codice stesso:

insert just after: `$MOCK mount -t tmpfs -o $rootflags tmpfs $sysroot`

## Uso del sidecar

Copia l'init modificato nella tua initramfs e usa questi parametri di boot:
```
alpinelivelabel=colibri alpinelivesquashfs=/mnt/live/filesystem.squashfs
```
### Parametri Boot Supportati

- `alpinelivelabel=LABEL` - Label del dispositivo live (es: colibri)
- `alpinelivesquashfs=PATH` - Percorso al filesystem.squashfs (es: `/mnt/live/filesystem.squashfs`)
- `cow_spacesize=512M - Dimensione spazio COW
