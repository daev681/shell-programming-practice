#!/bin/bash

CONFIRMED_IPS=$(netstat -an | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | awk '$1 > 50 {print $2}')

if [ -z "$CONFIRMED_IPS" ]; then
    echo "비정상적인 과다 접속이 없습니다."
else
    echo "다음 IP들이 과도한 접속을 시도 중입니다:"
    echo "$CONFIRMED_IPS"
fi
