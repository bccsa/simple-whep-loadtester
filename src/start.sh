#!/bin/bash
cd simple-whep-client

export DYLD_LIBRARY_PATH="/opt/homebrew/lib:$DYLD_LIBRARY_PATH"
export GI_TYPELIB_PATH="/opt/homebrew/lib/girepository-1.0:$GI_TYPELIB_PATH"


print_usage() {
  printf "Usage: ./start.sh -s <sessions> -u <url>\n -w sleep_time (optional, default is 1 second, this is a sleep time between each session)\n"
}

while getopts 's:u:h' flag; do
  case "${flag}" in
    s) sessions=${OPTARG} ;;
    u) url=${OPTARG} ;;
    w) sleep_time=${OPTARG} ;;
    h) print_usage
       exit 1 ;;
  esac
done

if [ -z "$sessions" ] || [ -z "$url" ]; then
  print_usage
  exit 1
fi

for ((i=0; i<sessions; i++)); do
    sleep $sleep_time || 1
    echo "Starting session $((i + 1)) of $sessions"
  ./whep-client -u "$url" -A "application/x-rtp,media=audio,encoding-name=opus,clock-rate=48000,encoding-params=(string)2,payload=111" -n &
done

wait
