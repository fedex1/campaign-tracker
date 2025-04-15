#!
if false; then
curl 'https://tidalforce.share.zrok.io/multi_search?x-typesense-api-key=nWWQnzGThboepoIIy3uP6J2h28R6sVai' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,it-IT;q=0.8,it;q=0.7' \
  -H 'cache-control: no-cache' \
  -H 'content-type: text/plain' \
  -H 'dnt: 1' \
  -H 'origin: https://prop.tidalforce.org' \
  -H 'pragma: no-cache' \
  -H 'priority: u=1, i' \
  -H 'referer: https://prop.tidalforce.org/' \
  -H 'sec-ch-ua: "Google Chrome";v="135", "Not-A.Brand";v="8", "Chromium";v="135"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: cross-site' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36' \
  --data-raw '{"searches":[{"query_by":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","sort_by":"ORG_AMTint:desc","highlight_full_fields":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","collection":"nys-election-details","q":"Angela Aquino","facet_by":"FLNG_ENT_ZIP,FILING_SCHED_DESC,ELECTION_YEAR,_source,CAND_COMM_NAME,ORG_AMTint","filter_by":"FILING_SCHED_DESC:=[`Monetary Contributions`]","max_facet_values":10,"page":1,"per_page":250},{"query_by":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","sort_by":"ORG_AMTint:desc","highlight_full_fields":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","collection":"nys-election-details","q":"Angela Aquino","facet_by":"FILING_SCHED_DESC","max_facet_values":10,"page":1}]}'
fi

curl 'https://tidalforce.share.zrok.io/multi_search?x-typesense-api-key=nWWQnzGThboepoIIy3uP6J2h28R6sVai' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,it-IT;q=0.8,it;q=0.7' \
  -H 'cache-control: no-cache' \
  -H 'content-type: text/plain' \
  -H 'dnt: 1' \
  -H 'origin: https://prop.tidalforce.org' \
  -H 'pragma: no-cache' \
  -H 'priority: u=1, i' \
  -H 'referer: https://prop.tidalforce.org/' \
  -H 'sec-ch-ua: "Google Chrome";v="135", "Not-A.Brand";v="8", "Chromium";v="135"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: cross-site' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36' \
  --data-raw '{"searches":[{"query_by":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","sort_by":"ORG_AMTint:desc","highlight_full_fields":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","collection":"nys-election-details","q":"juumane williams","facet_by":"FLNG_ENT_ZIP,FILING_SCHED_DESC,ELECTION_YEAR,_source,CAND_COMM_NAME,ORG_AMTint","filter_by":"FILING_SCHED_DESC:=[`Monetary Contributions`,`In-Kind Contributions`] && ELECTION_YEAR:=[2025]","max_facet_values":10,"page":1,"per_page":250},{"query_by":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","sort_by":"ORG_AMTint:desc","highlight_full_fields":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","collection":"nys-election-details","q":"juumane williams","facet_by":"FILING_SCHED_DESC","filter_by":"ELECTION_YEAR:=[2025]","max_facet_values":10,"page":1},{"query_by":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","sort_by":"ORG_AMTint:desc","highlight_full_fields":"CAND_COMM_NAME,FLNG_ENT_FIRST_NAME,FLNG_ENT_MIDDLE_NAME,FLNG_ENT_LAST_NAME,FLNG_ENT_NAME,FLNG_ENT_ADD1,FILING_SCHED_DESC,FLNG_ENT_CITY,FLNG_ENT_ZIP,ELECTION_YEAR,TRANS_EXPLNTN,TRANS_NUMBER,SCHED_DATE,PURPOSE_CODE_DESC,TRANSFER_TYPE_DESC,EMPNAME","collection":"nys-election-details","q":"juumane williams","facet_by":"ELECTION_YEAR","filter_by":"FILING_SCHED_DESC:=[`Monetary Contributions`,`In-Kind Contributions`]","max_facet_values":10,"page":1}]}'
