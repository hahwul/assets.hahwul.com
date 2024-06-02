wget https://raw.githubusercontent.com/payloadbox/xss-payload-list/master/Intruder/xss-payload-list.txt -O docs/xss-payloadbox.txt

# Calc subs
LINE=`wc -l docs/xss-payloadbox.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/xss-payloadbox.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"xss-payloadbox.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > docs/xss-payloadbox.json
