#!/bin/bash
DIR="./backup/s.vidal/$(date '+%Y/%m/%d')"
FILENAME="nginx_logs_examples.log"

if [ ! -d "$DIR" ]; then
   mkdir -p "$DIR"
fi

cp nginx_logs_examples.log "${DIR}/nginx_log_requests$(date '+_%Y%m%d').${FILENAME##*.}"

TAR_FILENAME="nginx_logs$(date '+_%Y%m%d').tar.gz"

if [[ $(date +%u) -eq 1 ]]; then
    tar -cf "${TAR_FILENAME}" -T /dev/null

    for i in {1..6}
    do
        I_DAY=$(date -v-${i}d "+%Y/%m/%d") 

        if [ -d "./backup/s.vidal/$I_DAY" ]; then
            tar rvf  ${TAR_FILENAME} ./backup/s.vidal/${I_DAY}/nginx_log_requests$(date -v-${i}d "+_%Y%m%d").${FILENAME##*.}
        fi
    done
fi