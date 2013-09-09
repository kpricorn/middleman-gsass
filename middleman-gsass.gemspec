# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-gsass/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-gsass"
  spec.version       = MiddlemanGsass::VERSION
  spec.authors       = ["Sebastian de Castelberg"]
  spec.email         = ["sebu@kpricorn.org"]
  spec.description   = %q{gorilla software sass mixins for middleman (logos, images)}
  spec.summary       = %q{gorilla software sass mixins for middleman (logos, images)}
  spec.homepage      = "https://github.com/gorillasoftware/middleman-gsass"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "gsass"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
