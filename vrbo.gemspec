# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vrbo/version'

Gem::Specification.new do |spec|
  spec.name          = "vrbo"
  spec.version       = VRBO::VERSION
  spec.authors       = ["Ryan Buckley"]
  spec.email         = ["arebuckley@gmail.com"]
  spec.description   = %q{Scrapes a VRBO calendar using Mechanize and returns available dates}
  spec.summary       = %q{Scrapes a VRBO calendar using Mechanize}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "mechanize", '~> 2.5.1'
  spec.add_runtime_dependency "mime-types", '~> 1.23'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
