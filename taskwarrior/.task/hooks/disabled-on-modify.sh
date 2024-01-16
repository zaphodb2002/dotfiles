#!/bin/bash
read modified_task
uuid=$(echo $modified_task | jq '.uuid' | sed 's/"//g')
file_name="/home/zaphod/.task/outbox/$uuid"

echo $modified_task

echo $modified_task > $file_name

exit 0
