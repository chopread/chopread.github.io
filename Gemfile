source "https://rubygems.org"

# Jekyll core. GitHub Pages now builds best via GitHub Actions (see
# .github/workflows/jekyll.yml) rather than the legacy github-pages gem,
# which lets us control the Jekyll version and use plugins freely.
gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.17"     # auto-generates feed.xml (the automation linchpin)
  gem "jekyll-seo-tag", "~> 2.8"   # canonical URLs + meta tags
end

# Windows / JRuby compatibility (harmless elsewhere)
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "webrick", "~> 1.8"  # needed to run `jekyll serve` on Ruby 3+
