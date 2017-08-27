require 'html-proofer'

task default: %i[build test]

task :build do
  `bundle exec jekyll build`
end

task :s do
  sh 'bundle exec jekyll serve'
end

task :test do
  sh 'bundle exec jekyll build'
  options = { assume_extension: true }
  HTMLProofer.check_directory('./_site', options).run
end
