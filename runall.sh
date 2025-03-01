#!
DATE=$(date)
curl 'https://www.nyccfb.info/public/reports/candidate_25.htm' |html2csv >nyccfb_info_public_reports_candidate_25.htm.csv
curl 'https://www.nyccfb.info/public/reports/pclt_25.htm' >nyccfb_info_public_reports_pclt_25.htm
OUT="nyccfb_info_public_reports_pclt_25.htm.csv"
OUTHTML="changes.2025.html"

html2csv <nyccfb_info_public_reports_pclt_25.htm >$OUT
if [ -s "$OUT" ]; then
python gemini_convert_to_csv.py
echo '<head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"></head><body><pre>' >$OUTHTML
# echo '<pre>' >$OUTHTML
    source ~/.nvm/nvm.sh
    nvm use v18.18.2
    # git log --patch --color-words  -- $OUT|head -2000| npx ansi-to-html >> $OUTHTML
    git log --patch --color-words  -- $OUT|head -2000| npx ansi2html >> $OUTHTML
	git commit -m "${DATE}" .
	git pull --quiet
	git push
fi

# git diff --unified=0  f42baa3ff689e96186b2990bf3f2aecd0e2792a9  -- nyccfb_info_public_reports_pclt_25.htm.csv > new.modified.campaigns.txt
# get emails
# grep -oP 'E-Mail:.*?["S]' nyccfb_info_public_reports_pclt_25.htm.csv|sed 's/["S]$//'|sort -u|less
# grep -oP 'E-Mail:.*?["S]' nyccfb_info_public_reports_pclt_25.htm.csv|sed 's/["S]$//'|sed 's/E-Mail://'|sort -u
