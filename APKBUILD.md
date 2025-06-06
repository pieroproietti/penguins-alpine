# APKBUILD

# install alpine-sdk
```
doas apk add alpine-sdk
```
# user executing abuild member of the abuild group.
```
doas adduser artisan abuild
```

# create keys
```
abuild-keygen -n
```

e segui le istruzioni

```
doas cp /home/artisan/.abuild/piero.proietti@gmail.com-*.rsa /etc/apk/keys
```

