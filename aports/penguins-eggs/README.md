# APKBUILD penguins-eggs

# IMPORTANTE

Installare sul sistema:
```
sudo apk add gcompat libc6-compat
```

e, ***CRUCIALE*** creare il seguente link:
```
ln -s /lib/ld-musl-x86_64.so.1 /lib/libsdl.so.2
```

quindi:

```
./go
```
