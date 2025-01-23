#!
DATE=$(date)
curl 'https://www.nyccfb.info/public/reports/pclt_25.htm' > nyccfb_info_public_reports_pclt_25.htm
html2csv < nyccfb_info_public_reports_pclt_25.htm >nyccfb_info_public_reports_pclt_25.htm.csv
git commit -m "${DATE}" .
git pull --quiet
git push

