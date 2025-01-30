#!
DATE=$(date)
curl 'https://www.nyccfb.info/public/reports/pclt_25.htm' >nyccfb_info_public_reports_pclt_25.htm
OUT="nyccfb_info_public_reports_pclt_25.htm.csv"

html2csv <nyccfb_info_public_reports_pclt_25.htm >$OUT
if [ -s "$OUT" ]; then
	git commit -m "${DATE}" .
	git pull --quiet
	git push
fi

# git diff --unified=0  f42baa3ff689e96186b2990bf3f2aecd0e2792a9  -- nyccfb_info_public_reports_pclt_25.htm.csv > new.modified.campaigns.txt
