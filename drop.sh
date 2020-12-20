#!/bin/bash
# Block Tor Exit nodes
IPTABLES_TARGET="DROP"
IPTABLES_CHAINNAME="TOR”
if ! iptables -L TOR -n >/dev/null 2>&1 ; then 
  iptables -N TOR >/dev/null 2>&1
  iptables -A INPUT -p tcp -j TOR 2>&1
fi
cd /tmp/
wget -q -O - "https://www.dan.me.uk/torlist/" -U SXTorBlocker/1.0 > /tmp/full.tor
sed -i 's|^#.*$||g' /tmp/full.tor
iptables -F TOR CMD=$(cat /tmp/full.tor | uniq | sort)
for IP in $CMD; do
  let COUNT=COUNT+1
  iptables -A TOR -s $IP -j DROP
done
