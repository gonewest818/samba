#!/bin/bash -x

docker run -it --rm \
           -p 139:139 \
           -p 445:445 \
           -v /tmp/data:/data \
           -d gonewest818/samba:edge \
           -u "foo;bad"


#           -s "quux;/tmp;yes;no"

# mount -t smbfs -w //foo:bad@localhost/SMBTimeMachine /tmp/tm
# mount -t smbfs -w //foo:bad@localhost/quux /tmp/qx

