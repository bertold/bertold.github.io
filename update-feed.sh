#!/bin/bash -x

STREAM_URL="https://www.klubradio.hu/data/hanganyagok/"$(date +%Y/%-m/%-d)"/archivum_alenyeg18_"$(date +%y%m%d)".mp3"
UUID=$(uuidgen)
UPDATED=$(date +%Y-%d-%mT%H:%M:%S%:z)

cat <<EOF > /tmp/update.json
{
  "uid": "urn:uuid:$UUID",
  "updateDate": "$UPDATED",
  "titleText": "Latest news from Klub Radio",
  "mainText": "",
  "streamUrl": "$STREAM_URL",
  "redirectionUrl": "https://www.klubradio.hu/"
}
EOF

mv /tmp/update.json ./klubradio.json
