wget https://raw.githubusercontent.com/payloadbox/xss-payload-list/master/Intruder/xss-payload-list.txt -O deploy/xss-payloadbox.txt

# Calc subs
LINE=`wc -l deploy/xss-payloadbox.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/xss-payloadbox.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"xss-payloadbox.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/xss-payloadbox.json
