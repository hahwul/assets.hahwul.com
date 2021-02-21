# Pull targets
wget https://raw.githubusercontent.com/KingOfBugbounty/KingOfBugBountyTips/master/downlink ; xargs -a downlink -I@ sh -c 'wget @ -q'; mkdir bounty ; unzip -o '*.zip' -d bounty/ ; rm -rf *zip ; cat bounty/*.txt | sort -u > ./docs/subs.txt

# Calc subs
wc -l docs/subs.txt | cut -d " " -f 1 | tee ./docs/line-subs.txt
ls -alh docs/subs.txt | cut -d " " -f 5 | tee ./docs/size-subs.txt

