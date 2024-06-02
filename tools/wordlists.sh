# get wordlists
wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/boring_headers -O deploy/wl-b-headers.txt

wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/assetnote-params -O deploy/wl-assetnote-params.txt

wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/headers -O deploy/wl-headers.txt

wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/params -O deploy/wl-params.txt

# Calc lists
LINE=`wc -l deploy/wl-b-headers.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-b-headers.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-b-headers.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-b-headers.json

LINE=`wc -l deploy/wl-assetnote-params.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-assetnote-params.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-assetnote-params.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-assetnote-params.json

LINE=`wc -l deploy/wl-headers.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-headers.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-headers.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-headers.json

LINE=`wc -l deploy/wl-params.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-params.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-params.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-params.json
