# ChopRead — site

The public face of ChopRead (stocks & options) and ChopSniper (0DTE), under the
**Ch0plife** voice. A Jekyll static site built to deploy free on GitHub Pages, with
an RSS feed wired in as the linchpin for the future email pipeline.

---

## What's in here

```
chopread-site/
├── _config.yml                 # site settings (title, url, plugins)
├── Gemfile                     # Jekyll + jekyll-feed + jekyll-seo-tag
├── index.html                  # home: hero + running list of notes
├── about.md                    # the manifesto / voice  → /about/
├── methodology.md              # how we read + full disclaimer → /methodology/
├── _layouts/
│   ├── default.html            # shell: fonts, SEO, feed, header/footer
│   ├── post.html               # article layout
│   └── page.html               # static-page layout
├── _includes/
│   ├── header.html             # masthead + chop-line signature mark
│   └── footer.html             # links + permanent disclaimer
├── _posts/
│   ├── 2026-06-15-sixty-three-percent.md          # Desk Note: 0DTE at 63%
│   └── 2026-06-17-the-day-the-dealers-had-to-sell.md  # Case Study: negative gamma
├── assets/css/style.css        # the whole design system
└── .github/workflows/jekyll.yml# build + deploy to Pages via Actions
```

## Publish it (first time)

1. Create a repo and push these files (for your existing user site, that's the
   `techdayo.github.io` repo; the files go at the repo **root**, not in a subfolder).
2. In the repo: **Settings → Pages → Build and deployment → Source: "GitHub Actions."**
3. Push to `main`. The workflow builds and deploys automatically. Done.

The live feed will be at `/feed.xml` — that's the URL the email automation (Stage 2)
will watch.

## Run it locally (optional)

```bash
bundle install
bundle exec jekyll serve
# open http://localhost:4000
```

## Write a new note

Drop a Markdown file in `_posts/` named `YYYY-MM-DD-slug.md` with this front matter:

```yaml
---
layout: post
kind: Desk Note · 0DTE      # the eyebrow label — encodes the TYPE of note
title: Your Title
dek: One or two sentences that sell the read.
date: 2026-06-20 08:30:00 -0400
read: 4 min read
ticker: SPX
---
```

`kind` is the small label above the headline. Use it consistently:
`Desk Note · 0DTE`, `Case Study · Gamma`, `Research Drop`, etc. It tells the reader
what kind of note they're getting before they read a word.

Design helpers you can use inside a post:
- A data/level callout: wrap mono lines in `<div class="figline"> … </div>` (use
  `<span class="k">label</span>` for the dim left column).
- A risk/trap callout: `<div class="risk"><span class="label">The trap</span> … </div>`

---

## Two things to decide before you go public

**1. The identity link.** This site is set to live at `techdayo.github.io`, but
"techdayo" points straight back to you — which undercuts the anonymity you wanted for
the brand. The clean fix is a **custom domain**: point `chopread.com` at the Pages site
and the GitHub URL stops mattering. To do it: set `url: "https://chopread.com"` in
`_config.yml`, add a file named `CNAME` at the repo root containing just `chopread.com`,
and point the domain's DNS at GitHub Pages. (A separate GitHub org named `chopread` is
the alternative, but the custom domain is simpler and you'll want the domain anyway.)

**2. Verify the figures before publishing.** The two starter posts use real, dated
market-structure facts (0DTE ≈ 63% of SPX volume, Feb 2026; the late-Feb negative-gamma
down day). Confirm the exact numbers against a primary source (e.g. the Cboe monthly
volume report) and adjust any specific figure before these go live. The *mechanics* in
the posts are evergreen; it's only the headline data points that need a quick check.

## What's intentionally NOT here yet

- **Email / Beehiiv automation** — that's Stage 2. The RSS feed is already in place so
  it'll plug in cleanly when you're ready.
- **Legal review** — saved for the QA phase, per plan. The disclaimer is in place on
  every page in the meantime, but it's not a substitute for a one-time attorney review
  before you publish trading content under a brand.
