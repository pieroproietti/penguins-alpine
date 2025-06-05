# APKBUILD

# install alpine-sdk
```
apk add alpine-sdk
```
# user executing abuild member of the abuild group.
```
adduser artisan abuild
```

# create keys
```
abuild-keygen -n
```

Insert on `~/.abuild/abuild.conf`:
```
PACKAGER_PRIVKEY="/home/artisan/.abuild/piero.proietti@gmail.com-66b8815d.rsa"
```
copia la chiave in /etc/apk/keys

```
sudo cp /home/artisan/.abuild/piero.proietti@gmail.com-68412146.rsa /etc/apk/keys
```

