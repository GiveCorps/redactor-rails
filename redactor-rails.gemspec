# -*- encoding: utf-8 -*-
require File.expand_path('../lib/redactor-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sammy"]
  gem.email         = ["sammylintw@gmail.com"]
  gem.description   = "The redactor-rails gem integrates the Redactor editor"
  gem.summary       = ""
  gem.homepage      = "https://github.com/SammyLin/redactor-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "redactor-rails"
  gem.require_paths = ["lib"]
  gem.version       = RedactorRails::VERSION

  gem.add_development_dependency "bundler", "~> 1.13"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency "rspec-rails", "~> 3.0"
  gem.add_development_dependency "factory_bot_rails"
  gem.add_development_dependency "test-unit"
  gem.add_development_dependency "shoulda-matchers"


  gem.add_dependency("mime-types")
  gem.add_dependency("orm_adapter")
  gem.add_dependency("devise")
end
