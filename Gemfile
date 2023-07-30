source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


if ENV['RAILS_ENV'] == "production"
  # Specify your gem's dependencies in uistiti.gemspec.
  gemspec
else
  gem "uistiti"
end

gem "puma"

gem "sqlite3"

gem "sprockets-rails"

gem "sass-rails"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"
