# Pull targets
wget https://raw.githubusercontent.com/KingOfBugbounty/KingOfBugBountyTips/master/downlink ; xargs -a downlink -I@ sh -c 'wget @ -q'; mkdir bounty ; unzip -o '*.zip' -d bounty/ ; rm -rf *zip ; cat bounty/*.txt | sort -u > ./docs/subs.txt

# Calc subs
#wc -l docs/subs.txt | cut -d " " -f 1 | ~/go/bin/gee ./docs/line-subs.txt
#ls -alh docs/subs.txt | cut -d " " -f 5 | ~/go/bin/gee ./docs/size-subs.txt

# Calc http
LINE=`wc -l docs/subs.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/subs.txt | cut -d " " -f 5`
echo \{\"path\":\"subs.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\"\} > docs/subs.json
