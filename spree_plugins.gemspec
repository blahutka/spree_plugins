# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_plugins'
  s.version     = '0.0.0'
  s.summary     = 'Spree extension to add plugins to products'
  s.description = 'This enables storefront owners to add custom scripts to their site to include advanced functionality'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Kevin Casey, Sophia Chung, Sherman Leung'
  s.email     = 'kacasey@berkeley, schung@godaddy.com, sleung@godaddy.com'
  s.homepage  = 'http://godaddy.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.3.1'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails', '~> 4.0.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
