# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schema_friendly/version'

Gem::Specification.new do |spec|
  spec.name          = "schema_friendly"
  spec.version       = SchemaFriendly::VERSION
  spec.authors       = ["Andrew Swerlick"]
  spec.email         = ["andrew.swerlick@hbdi.com"]
  spec.summary       = %q{ A series of patches and rake tasks to make active record work better with postgres schemas, particularly in regards to migrations }
  spec.description   = %q{ This gem is meant to make it easier to run multiple applications inside of a single database using seperate postgres schemas }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
