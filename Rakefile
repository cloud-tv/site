require 'html-proofer'

task default: :test

task test: %i[lint:scss lint:html build]

task :build do
  sh 'bundle exec jekyll build'
end

namespace :lint do
  task :scss do
    sh 'bundle exec scss-lint'
  end

  task :html do
    options = { assume_extension: true }
    HTMLProofer.check_directory('./_site', options).run
  end
end

task :s do
  sh 'bundle exec jekyll serve'
end
