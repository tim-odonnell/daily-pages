# daily-pages

Publishes one long page, **https://timodonnell.info/daily**: the US economy report, a labeled band, the VFINX vs trend
report, a band, the gold vs trend report. Each report's latest.html is merged in with its CSS prefixed per section (no
clashes, works in every browser); phones get the same page scaled to fit. A report older than expected is flagged
"not updated today" in its band. Paths under the home folder are never published.

- `daily-pages` - build + commit + push to `~/tim-odonnell.github.io` (only when the page changed)
- `daily-pages --no-push --out FILE` - build a local preview only
- Timer `daily-pages.timer`: every day 06:50 (economy 04:30, gold 06:30, VFINX 06:35), Persistent. Failure -> desktop pop-up.
- Install: `./install.sh`
