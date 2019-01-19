#!/bin/bash
# BAhJIiU4ODliNWMwNjkzYjU2NzViZTMwYjk5ZGUwOGJiMTUwNQY6BkVG--d3a7e97375c18afa55b19a8ffbe0564dba7d0adc

curl "http://localhost:4741/restaurants/${ID}" \
  --include \
  --request PATCH \
  --header "Content-type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "restaurant": {
      "user_id": "'"${U_ID}"'",
      "name": "'"${N}"'",
      "address": "'"${A}"'",
      "telephone": "'"${T}"'",
      "dish": "'"${D}"'"
    }
  }'

echo
``
