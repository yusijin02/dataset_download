#!/bin/bash

##############################################
############ Set your config here ############
##############################################
ID_TO_DOWNLOAD=pscotti/naturalscenesdataset  # The ID to download
PATH_TO_SAVE=naturalscenesdataset            # Choose a local path to save the data
USE_MIRROR=true                              # Use mirror website? (Faster for Chinese users)
IS_DATASET=true                              # Set it `true` if you are downloading a dataset, or `false` if model
##############################################

############ Don't Edit ######################
if [ "$USE_MIRROR" ]; then
    DOMAIN=hf-mirror.com
else
    DOMAIN=huggingface.co
fi

if [ "$IS_DATASET" ]; then
    BASE_URL="https://${DOMAIN}/datasets/${ID_TO_DOWNLOAD}/resolve/main"
else
    BASE_URL="https://${DOMAIN}/${ID_TO_DOWNLOAD}/resolve/main"
fi

if [ ! -d $PATH_TO_SAVE ]; then
    mkdir $PATH_TO_SAVE
fi
cd $PATH_TO_SAVE

if [ ! -f ".gitattributes" ]; then
    wget "$BASE_URL/.gitattributes" -O ".gitattributes"
fi

while IFS= read -r line; do
    if [[ "$line" == *filter=lfs* ]]; then
        FILE_PATTERN=$(echo "$line" | cut -d ' ' -f 1)

        if [[ "$FILE_PATTERN" != "*" && ! -e "$(dirname "$FILE_PATTERN")/$FILE_PATTERN" ]]; then
            mkdir -p "$(dirname "$FILE_PATTERN")"
            wget "$BASE_URL/$FILE_PATTERN" -P "$(dirname "$FILE_PATTERN")"
        fi
    fi
done < ".gitattributes"