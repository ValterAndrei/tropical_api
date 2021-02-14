source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'foreman'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.2', '>= 6.1.2.1'
gem 'redis', '3.2.1' # heroku require this version because free version use redis v3.2.12
gem 'sass-rails', '>= 6'
gem 'sidekiq'
gem 'sidekiq-cron', '~> 1.1'
gem 'tropical', '~> 0.1.6'
gem 'turbolinks', '~> 5'
gem 'twitter', '~> 7.0'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
