wget https://raw.githubusercontent.com/payloadbox/xss-payload-list/master/Intruder/xss-payload-list.txt -O docs/wl-payloadbox-xss.txt

# Calc subs
LINE=`wc -l docs/wl-payloadbox-xss.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/wl-payloadbox-xss.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-payloadbox-xss.txt.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > docs/wl-payloadbox-xss.json
