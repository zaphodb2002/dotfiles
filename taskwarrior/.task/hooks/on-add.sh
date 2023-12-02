#!/bin/bash

read new_task

uuid=$(echo $new_task | jq '.uuid' | sed 's/"//g')
file_name="/home/zaphod/.task/inbox/$uuid"

echo $new_task

echo $new_task > $file_name

exit 0
