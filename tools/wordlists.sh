# get wordlists
wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/boring_headers -O docs/wl-b-headers.txt

wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/assetnote-params -O docs/wl-assetnote-params.txt

wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/headers -O docs/wl-headers.txt

wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/params -O docs/wl-params.txt

# Calc lists
LINE=`wc -l docs/wl-b-headers.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/wl-b-headers.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-b-headers.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\"\"date\":\"$LDATE\"\} > docs/wl-b-headers.json

LINE=`wc -l docs/wl-assetnote-params.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/wl-assetnote-params.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-assetnote-params.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\"\"date\":\"$LDATE\"\} > docs/wl-assetnote-params.json

LINE=`wc -l docs/wl-headers.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/wl-headers.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-headers.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\"\"date\":\"$LDATE\"\} > docs/wl-headers.json

LINE=`wc -l docs/wl-params.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/wl-params.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-params.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\"\"date\":\"$LDATE\"\} > docs/wl-params.json
