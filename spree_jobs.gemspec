# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_jobs'
  s.version     = '2.3.0'
  s.summary     = 'Spree Jobs'
  s.description = 'Allows you to create and manage jobs on the admin and show the active job openings on the frontend of your site.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'David Ang'
  s.email     = 'david@godynamo.com'
  s.homepage  = 'http://www.godynamo.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency "solidus", [">= 1.0.0", "< 1.2.0"]

  s.add_dependency 'paperclip'

  # s.add_development_dependency 'capybara', '~> 2.1'
  # s.add_development_dependency 'coffee-rails'
  # s.add_development_dependency 'database_cleaner'
  # s.add_development_dependency 'factory_girl', '~> 4.2'
  # s.add_development_dependency 'ffaker'
  # s.add_development_dependency 'rspec-rails',  '~> 2.13'
  # s.add_development_dependency 'sass-rails'
  # s.add_development_dependency 'selenium-webdriver'
  # s.add_development_dependency 'simplecov'
  # s.add_development_dependency 'sqlite3'
end
