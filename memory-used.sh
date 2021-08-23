#memory used:
free -m | xargs | awk '{printf($9+$12 "MB (%d%%)",($9+$12)/$8*100)}'
