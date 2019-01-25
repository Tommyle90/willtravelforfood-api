#!/bin/bash

curl "http://localhost:4741/restaurants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "restaurant": {
      "trip_id": "'"${ID}"'",
      "user_id": "'"${UID}"'",
      "name": "'"${N}"'",
      "address": "'"${A}"'",
      "telephone": "'"${T}"'",
      "dish": "'"${D}"'"
    }
  }'

echo
