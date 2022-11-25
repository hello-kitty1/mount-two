#!/bin/sh
if [ ! -f UUID ]; then
  UUID="681c4535-30a6-41cb-bb27-32f18e2ae12c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

