#!/bin/bash

# SITES=$(for n in `cat ./sites.whitelist.txt` ; do echo -n $n" "; done)
# echo "Sites are "$SITES
# sed -i '' "s/^acl whitelist dstdomain.*/acl whitelist dstdomain $SITES/" squid.conf

# address=/#/127.0.0.1
# server=/icloud.com/8.8.8.8

echo "log-queries"
echo "address=/#/127.0.0.1"

for n in `cat ./sites.whitelist.txt | awk -F. '{print $2"."$3}'` ; do
	echo "server=/"$n"/8.8.8.8"
done
