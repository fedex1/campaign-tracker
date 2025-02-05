#!
grep -oP 'E-Mail:.*?["S]' nyccfb_info_public_reports_pclt_25.htm.csv|sed 's/["S]$//'|sed 's/E-Mail://'|sort -u
