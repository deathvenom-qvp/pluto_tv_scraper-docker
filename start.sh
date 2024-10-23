#!/bin/bash

for arg in "$@"; do
   case "$arg" in
      work-dir=*) work_dir="${arg#*=}" ;;
   esac
done

cd $work_dir
echo "working dir : " $(pwd)

#scrape at startup in order to generate files on bool
plutotv-scraper --config /bin/pluto/config.json
plutotv-scraper --config /bin/pluto/config.json --port 5050
