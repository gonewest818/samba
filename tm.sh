#!/bin/bash -x

docker run -it --rm \
           -p 139:139 \
           -p 445:445 \
           -v /backup/timemachine:/data \
           -d gonewest818/samba:edge \
           -u "foo;bad"

# mount -t smbfs -w //foo:bad@localhost/SMBTimeMachine /tmp/tm

