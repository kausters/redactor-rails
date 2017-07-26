source 'https://rubygems.org'

# Specify your gem's dependencies in redactor-rails.gemspec
gemspec
gem 'rails', '~> 5.1.2'


platforms :ruby do
  gem "sqlite3"

  group :development do
    gem "unicorn", "~> 4.0.1"
  end

  group :development, :test do
    gem "capybara", ">= 0.4.0"
    gem "mynyml-redgreen", "~> 0.7.1", :require => 'redgreen'
  end

  group :active_record do
    gem "paperclip"
  end

end
