# APKBUILD penguins-eggs

# IMPORTANTE

Installare sul sistema:
```
sudo apk add gcompat libc6compat
```

e, ***CRUCIALE*** creare il seguente link:
```
ln -s /lib/ld-musl-x86_64.so.1 /lib/libdl.so.2
```

quindi:

```
./go
```
