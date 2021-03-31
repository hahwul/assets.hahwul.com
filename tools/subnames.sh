# Run 
cat docs/subs.txt | rev | cut -d "." -f 3-9999 | rev  | sort -u > docs/subnames.txt

# Calc subnames
LINE=`wc -l docs/subnames.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/subnames.txt | cut -d " " -f 5`
echo \{\"path\":\"subnames.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\"\} > docs/subnames.json
