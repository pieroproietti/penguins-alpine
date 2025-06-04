# Penguins' Eggs Sidecar per Alpine Linux

Repository per gestire facilmente il sidecar di penguins' eggs con Alpine Linux.

## 📁 Struttura della Repository

```
penguins-sidecar/
├── README.md
└── sidecar.in 
```

## Clona la repository
```bash

cd mkinitfs
```

## Applica il sidecar

## Usa l'init modificato
Copia l'init modificato nella tua initramfs e usa questi parametri di boot:
```
alpinelivelabel=EGGS_LIVE alpinelivesquashfs=/mnt/live/filesystem.squashfs
```

## Parametri Boot Supportati

- `alpinelivelabel=LABEL` - Label del dispositivo live (es: EGGS_LIVE)
- `alpinelivesquashfs=PATH` - Percorso al filesystem.squashfs (es: /mnt/live/filesystem.squashfs)
- `cow_spacesize=SIZE` - Dimensione spazio COW (attualmente non utilizzato)

## Come Funziona

Il sidecar:
1. Cerca un dispositivo con la label specificata
2. Monta il dispositivo live
3. Monta il filesystem.squashfs come layer read-only
4. Crea un overlay con tmpfs per le modifiche
5. Configura il sistema per il boot live
