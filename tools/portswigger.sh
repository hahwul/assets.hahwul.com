# Get xss payloads from portswigger
curl https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/events.json | ~/go/bin/gron | grep "{}" | cut -d "." -f 2 | cut -d " " -f 1 | sort -u | tee ./docs/wl-eventhandler.txt

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/classic.json -O ps-classic.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/events.json -O ps-event.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/content-types.json -O ps-content-types.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/dangling_markup.json -O ps-dangling-markup.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/encodings.json -O ps-encoding.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/frameworks.json -O ps-frameworks.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/obfuscation.json -O ps-obfuscation.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/polyglot.json -O ps-polyglot.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/protocols.json -O ps-protocols.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/restricted_characters.json -O ps-restricted-char.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/special_tags.json -O ps-special-tags.json

wget https://raw.githubusercontent.com/PortSwigger/xss-cheatsheet-data/master/json/useful_tags.json -O ps-useful-tags.json

# make xss payloads
cat ps-*.json | grep "\"code\"" | cut -d "\"" -f 4-9999 | rev | cut -d "\"" -f 2-999 | rev |tee docs/xss-portswigger.txt

# Calc
LINE=`wc -l docs/wl-eventhandler.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/wl-eventhandler.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-eventhandler.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > docs/wl-eventhandler.json

LINE=`wc -l docs/xss-portswigger.txt | cut -d " " -f 1`
SIZE=`ls -alh docs/xss-portswigger.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"xss-portswigger.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > docs/xss-portswigger.json
