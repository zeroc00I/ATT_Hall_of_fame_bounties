cat all_att | jq -r '.[].search.nodes[]|"\(.reporter.username) \(.total_awarded_amount)"' | awk '{ if ($2 == "null") $2 = 0; sum[$1] += $2 } END { for (i in sum) print i, sum[i] }'  | sort -k2,2nr
