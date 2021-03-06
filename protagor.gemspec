# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'protagor/version'

Gem::Specification.new do |spec|
  spec.name          = "protagor"
  spec.version       = Protagor::VERSION
  spec.authors       = ["Anatoly Chernow"]
  spec.email         = ["ch1c0t@yahoo.com"]
  spec.description   = %q{A subset of Prolog written in Ruby}
  spec.summary       = spec.description
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
