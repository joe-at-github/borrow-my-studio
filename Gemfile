source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'pry'
gem 'carrierwave', '~> 1.0'
gem 'elasticsearch-rails'
gem 'elasticsearch-model'
gem 'simple_form', '~> 3.5'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'jquery-rails'
gem 'mini_magick', '~> 4.8'
gem 'searchkick', '~> 2.4'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'omniauth-facebook', '~> 4.0'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'bootstrap-social-rails'

group :test do
  gem 'launchy'
  gem 'database_cleaner'
  gem 'rspec-expectations'
  gem 'poltergeist'
  gem 'cucumber-rails', :require => false
end


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver', '~> 3.7'
  gem 'cucumber-rails'
  gem 'geckodriver-helper', '~> 0.0.3'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
