source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
    gem 'factory_bot_rails'
    gem 'faker'
    gem 'pry-rails'
    gem 'pry-byebug'
    gem 'rspec-rails'
    gem 'rubocop', require: false
    gem 'rubocop-performance'
    gem 'shoulda-matchers'
end

group :development do
    gem 'annotate'
    gem "better_errors"
    gem 'binding_of_caller'
    gem 'listen', '>= 3.0.5', '< 3.2'
    gem 'rails-erd'
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
    gem 'database_cleaner'
    gem 'simplecov', require: false
end

gem 'combine_pdf'
gem 'liquid'
gem 'wicked_pdf'
gem 'active_model_serializers', '~> 0.10.0'

# gem 'lograge'
# gem 'fast_jsonapi'