#!/bin/bash

curl "http://localhost:4741/trips" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "trip": {
      "user_id": "'"${ID}"'",
      "restaurant_id": "'"${R_ID}"'",
      "city": "'"${C}"'",
      "date": "'"${D}"'"
    }
  }'

echo
