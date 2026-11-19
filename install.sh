#!/bin/bash
# Install daily-pages: command link + systemd timer (daily 06:50). Needs a clone of the site at ~/tim-odonnell.github.io.
set -eu
REPO="$(cd "$(dirname "$0")" && pwd)"
[ -d ~/tim-odonnell.github.io/.git ] || gh repo clone tim-odonnell/tim-odonnell.github.io ~/tim-odonnell.github.io
chmod +x "$REPO"/bin/daily-pages
ln -sfn "$REPO/bin/daily-pages" ~/.local/bin/daily-pages
cp "$REPO"/systemd/daily-pages.{service,timer} ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable --now daily-pages.timer
echo "Installed. Next run: $(systemctl --user show daily-pages.timer -p NextElapseUSecRealtime --value)"
