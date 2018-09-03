source "https://rubygems.org"


gem "hanami", "~> 1.3.beta1"
gem "hanami-model", "~> 1.3.beta1"
gem "rake"

gem "ramsey_cop"
gem "sqlite3"

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "hanami-webconsole"
  gem "shotgun", platforms: :ruby
end

group :test, :development do
  gem "dotenv", "~> 2.0"
end

group :test do
  gem "capybara"
  gem "minitest"
  gem "minitest-matchers_vaccine"
  gem "mocha"
end

group :production do
  # gem 'puma'
end
