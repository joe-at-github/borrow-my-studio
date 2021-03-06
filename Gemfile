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
gem 'simple_form', '~> 3.5'
gem 'jquery-rails'
gem 'mini_magick', '~> 4.8'
gem 'therubyracer', platforms: :ruby # or any other runtime
gem 'less-rails'
gem 'autoprefixer-rails'
gem 'semantic-ui-rails'
gem 'semantic-ui-sass'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'bxslider-rails', '~> 4.2', '>= 4.2.5.1'
gem 'mailboxer', '~> 0.15.1'
gem 'will_paginate', '~> 3.0'
gem 'gravatar_image_tag'
gem 'chosen-rails', '~> 1.8', '>= 1.8.2'
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
gem 'jquery-turbolinks', '~> 2.1'
gem 'elasticsearch-rails'
gem 'elasticsearch-model'
gem 'searchkick', '~> 2.4'
gem 'will_paginate_semantic_ui', '~> 1.0'
gem 'client_side_validations', '~> 11.1'
gem 'client_side_validations-simple_form', '~> 6.5', '>= 6.5.1'
gem 'omniauth-google-oauth2', '~> 0.5.3'
gem 'bootstrap-social-rails'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem "figaro"
gem "fog-aws"


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
  gem 'geckodriver-helper', '~> 0.0.3'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
