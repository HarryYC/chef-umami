lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "chef-ramsay/version"

Gem::Specification.new do |gem|
  gem.name          = "chef-ramsay"
  gem.version       = Ramsay::VERSION
  gem.authors       = [ "Ryan Frantz" ]
  gem.email         = [ "ryanleefrantz@gmail.com" ]
  gem.description   = "A tool to generate unit/integration tests for Chef cookbooks and client runs."
  gem.summary       = gem.description

  gem.required_ruby_version = ">= 2.3"

  gem.executables   = %w{ ramsay }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "chef-dk", "~> 1.4"

end