# Make http
# ~/go/bin/httpx -l docs/subs.txt -threads 2000 -status-code -o docs/bounty-http.txt

# wc -l docs/bounty-http.txt | cut -d " " -f 1 | tee ./docs/line-bounty-http.txt
# ls -alh docs/bounty-http.txt | cut -d " " -f 5 | tee ./docs/size-bounty-http.txt

# Calc http
LINE=`wc -l docs/bounty-http.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/bounty-http.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"bounty-http.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > docs/bounty-http.json
