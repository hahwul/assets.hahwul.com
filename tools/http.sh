# Make http
~/go/bin/httpx -l docs/subs.txt -threads 500 -status-code -o docs/http.txt

# Calc subs
wc -l docs/http.txt | cut -d " " -f 1 | tee ./docs/line-http.txt
ls -alh docs/http.txt | cut -d " " -f 5 | tee ./docs/size-http.txt
