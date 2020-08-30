#!/bin/bash

SITES=$(for n in `cat ./sites.whitelist.txt` ; do echo -n $n" "; done)
# echo "Sites are "$SITES
sed -i '' "s/^acl whitelist dstdomain.*/acl whitelist dstdomain $SITES/" squid.conf
