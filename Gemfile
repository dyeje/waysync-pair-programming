source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 7.0.0.rc1'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'cssbundling-rails'
gem 'image_processing'
gem 'jbuilder', '~> 2.7'
gem 'jsbundling-rails'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'sassc-rails', '~> 2.1'
gem 'stimulus-rails', '>= 0.4.0'
gem 'turbo-rails', '>= 0.7.11'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'devise'
gem 'react-rails'

gem 'activeadmin', github: 'tagliala/activeadmin', branch: 'feature/railties-7' # FIXME: revert to stable
gem 'arbre', github: 'activeadmin/arbre' # FIXME: remove
gem 'inherited_resources', github: 'activeadmin/inherited_resources' # FIXME: remove

group :development, :test do
  gem 'debug', '>= 1.0.0', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.1'
  gem 'factory_bot_rails'
  gem 'ffaker'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'annotate'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem "cuprite"
end
