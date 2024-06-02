# Run 
cat deploy/bounty-subs.txt | rev | cut -d "." -f 3-9999 | rev  | sort -u > deploy/bounty-subnames.txt

# Calc subnames
LINE=`wc -l deploy/bounty-subnames.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/bounty-subnames.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"bounty-subnames.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/bounty-subnames.json
