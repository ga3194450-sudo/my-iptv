#!/data/data/com.termux/files/usr/bin/bash

cd ~/my-iptv || exit 1

git add -A

if git diff --cached --quiet; then
    echo "No changes to upload."
    exit 0
fi

git commit -m "Auto update IPTV $(date '+%Y-%m-%d %H:%M')"
git push origin main
