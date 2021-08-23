df -h / | awk '/[0-9]+%/ {gsub("%",""); print $4}'
