# Pull domains
curl https://raw.githubusercontent.com/internetwache/CT_subdomains/master/top-100.txt | grep -v "\#" | grep -v "count,subdomain" | cut -d "," -f 2 | tee ./deploy/wl-cts-100.txt

curl https://raw.githubusercontent.com/internetwache/CT_subdomains/master/top-1000.txt | grep -v "\#" | grep -v "count,subdomain" | cut -d "," -f 2 | tee ./deploy/wl-cts-1000.txt

curl https://raw.githubusercontent.com/internetwache/CT_subdomains/master/top-10000.txt | grep -v "\#" | grep -v "count,subdomain" | cut -d "," -f 2 | tee ./deploy/wl-cts-10000.txt

curl https://raw.githubusercontent.com/internetwache/CT_subdomains/master/top-100000.txt | grep -v "\#" | grep -v "count,subdomain" | cut -d "," -f 2 | tee ./deploy/wl-cts-100000.txt

# Calc subs
LINE=`wc -l deploy/wl-cts-100.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-cts-100.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-cts-100.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-cts-100.json

LINE=`wc -l deploy/wl-cts-1000.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-cts-1000.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-cts-1000.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-cts-1000.json

LINE=`wc -l deploy/wl-cts-10000.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-cts-10000.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-cts-10000.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-cts-10000.json

LINE=`wc -l deploy/wl-cts-100000.txt | cut -d " " -f 1`
SIZE=`ls -alh deploy/wl-cts-100000.txt | cut -d " " -f 5`
LDATE=`date -R`
echo \{\"path\":\"wl-cts-100000.txt\",\"line\":\"$LINE\",\"size\":\"$SIZE\",\"date\":\"$LDATE\"\} > deploy/wl-cts-100000.json
