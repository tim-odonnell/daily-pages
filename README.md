# daily-pages

Publishes one long page, **https://timodonnell.info/daily**: the US economy report, a labeled band, the VFINX vs trend
report, a band, the gold vs trend report. Each report's latest.html is merged in with its CSS prefixed per section (no
clashes, works in every browser); phones get the same page scaled to fit. A report older than expected is flagged
"not updated today" in its band. Paths under the home folder are never published.

- `daily-pages` - build + commit + push to `~/tim-odonnell.github.io` (only when the page changed)
- `daily-pages --no-push --out FILE` - build a local preview only
- Timer `daily-pages.timer`: every day 03:00 (economy 02:05, gold 02:10, VFINX 02:12), again at 06:50 to catch a late economy report, Persistent. Failure -> desktop pop-up.
- Install: `./install.sh`

`guide.html` is a fixed "How to read this page" section added below the three reports (link "How to read it" at the top).
It is the same text as the private claude.ai artifact "Reading the Good-Guy Daily"; edit this file to change it. Its styles are
scoped like the reports'; it uses font fallbacks only (no web fonts are loaded on the site).

## License

**The Median Line License (draft)** — free to use until your income exceeds the
median household income of the ZIP code you live in; above that line you
contribute a small share of what the software helped you earn, never enough to
pull you back below the line. Trust-based: no reporting, no audits. See
[LICENSE](LICENSE) and [the license project](https://github.com/tim-odonnell/median-line-license).
