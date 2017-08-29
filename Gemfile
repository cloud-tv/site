source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve

# http://jekyllrb.com/docs/github-pages/#deploying-jekyll-to-github-pages
require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)
gem 'github-pages', versions['github-pages']

gem 'rake'
gem 'html-proofer'
gem 'scss_lint'

# If you have any plugins, put them here!
group :jekyll_plugins do
   gem 'jekyll-feed', '~> 0.6'
end
