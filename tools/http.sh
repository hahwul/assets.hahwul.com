# Make http
#~/go/bin/httpx -l deploy/bounty-subs.txt -threads 2000 -status-code -o deploy/bounty-http.txt

# wc -l deploy/bounty-http.txt | cut -d " " -f 1 | tee ./deploy/line-bounty-http.txt
# ls -alh deploy/bounty-http.txt | cut -d " " -f 5 | tee ./deploy/size-bounty-http.txt

# Calc http
LINE=`wc -l deploy/bounty-http.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/bounty-http.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"bounty-http.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/bounty-http.json
