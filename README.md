# Work in progress

```
docker run -it image bash

krb5_newrealm
root/amin

q - to exit

kadmin.local
addprinc root/admin
enter passwd

kinit root/admin
enter passwd

klist to verify the ticket was cached

# list, add, delete principles
kadmin -p root/admin
listprincs
addprinc other/admin
listprincs
delprinc other/admin
q

```

