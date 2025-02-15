#!
DATE=$(date)
curl 'https://www.nyccfb.info/public/reports/pclt_25.htm' >nyccfb_info_public_reports_pclt_25.htm
OUT="nyccfb_info_public_reports_pclt_25.htm.csv"
OUTHTML="changes.2025.html"

html2csv <nyccfb_info_public_reports_pclt_25.htm >$OUT
if [ -s "$OUT" ]; then
echo '<pre>' >$OUTHTML
    git log --patch --color-words  -- $OUT|head -2000| /home/ralph/.nvm/versions/node/v18.18.2/bin/npx ansi-to-html >> $OUTHTML
	git commit -m "${DATE}" .
	git pull --quiet
	git push
fi

# git diff --unified=0  f42baa3ff689e96186b2990bf3f2aecd0e2792a9  -- nyccfb_info_public_reports_pclt_25.htm.csv > new.modified.campaigns.txt
# get emails
# grep -oP 'E-Mail:.*?["S]' nyccfb_info_public_reports_pclt_25.htm.csv|sed 's/["S]$//'|sort -u|less
# grep -oP 'E-Mail:.*?["S]' nyccfb_info_public_reports_pclt_25.htm.csv|sed 's/["S]$//'|sed 's/E-Mail://'|sort -u
