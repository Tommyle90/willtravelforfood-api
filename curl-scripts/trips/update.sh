#!/bin/bash
# BAhJIiU4ODliNWMwNjkzYjU2NzViZTMwYjk5ZGUwOGJiMTUwNQY6BkVG--d3a7e97375c18afa55b19a8ffbe0564dba7d0adc

curl "http://localhost:4741/trips/${ID}" \
  --include \
  --request PATCH \
  --header "Content-type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "trip": {
      "city": "'"${C}"'",
      "date": "'"${D}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
``
