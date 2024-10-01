#!/bin/bash
#Lang: Shell Script

URL="http://3.15.199.10/api"
SYSTEM_INFO=$(hostname)

DATA=$(cat<<EOF
{
"message":"Maria Angelica Gonzalez",
"systemInfo":"$SYSTEM_INFO"
}
EOF
)

curl -X POST -H "Content-Type: application/json" -d "$DATA" $URL
