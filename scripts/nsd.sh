#!/bin/bash

timeout_duration=150
retry_count=10
sleep_duration=1

url="https://naturalscenesdataset.org/fulllisting202109021229.txt"
listing_file="fulllisting.txt"

wget --timeout=$timeout_duration --tries=$retry_count -O "$listing_file" "$url"
sleep $sleep_duration

args=("$@")
for i in "${!args[@]}"; do
    args[$i]=${args[$i]#/}
    args[$i]=${args[$i]%\/}
done

while read -r line; do
    file_url=$(echo $line | awk '{print $3}')
    
    if [ ${#args[@]} -gt 0 ]; then
        match_found=false
        for path in "${args[@]}"; do
            if [[ $file_url == *$path* ]]; then
                match_found=true
                break
            fi
        done
        if [ "$match_found" = false ]; then
            continue
        fi
    fi

    http_url=${file_url//s3:\/\/natural-scenes-dataset/https:\/\/natural-scenes-dataset.s3-us-east-2.amazonaws.com}
    
    local_path=$(echo $http_url | sed 's|https://natural-scenes-dataset.s3-us-east-2.amazonaws.com/||')
    
    if [ -f "$local_path" ]; then
        echo "File already exists, skipping download: $local_path"
        continue
    fi

    mkdir -p $(dirname "$local_path")

    wget --timeout=$timeout_duration --tries=$retry_count -O "$local_path" "$http_url"
    sleep $sleep_duration
done < "$listing_file"
