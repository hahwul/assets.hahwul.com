# Pull targets
wget https://raw.githubusercontent.com/KingOfBugbounty/KingOfBugBountyTips/master/downlink ; xargs -a downlink -I@ sh -c 'wget @ -q'; mkdir bounty ; unzip -o '*.zip' -d bounty/ ; rm -rf *zip ; cat bounty/*.txt | sort -u > ./docs/bounty-subs.txt

# Calc subs
LINE=`wc -l docs/bounty-subs.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/bounty-subs.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"bounty-subs.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > docs/bounty-subs.json
