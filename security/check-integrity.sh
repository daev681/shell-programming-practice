#!/bin/bash
WATCH_DIR="/var/www/html"
HASH_DB="/root/file_hashes.db"

if [ ! -f $HASH_DB ]; then
    find $WATCH_DIR -type f -exec sha256sum {} + > $HASH_DB
    echo "해시 DB 생성 완료."
else
    sha256sum -c $HASH_DB --status
    if [ $? -ne 0 ]; then
        # 여기서 관리자에게 메일을 보내는 등의 조치 가능
    fi
fi
