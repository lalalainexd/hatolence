# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hatolence/version'

Gem::Specification.new do |spec|
  spec.name          = "hatolence"
  spec.version       = Hatolence::VERSION
  spec.authors       = ["lalalainexd"]
  spec.email         = ["lalalainexd@gmail.com"]
  spec.description   = %q{Wrapper for hate_crimes api}
  spec.summary       = %q{Wrapper for hate_crimes api}
  spec.homepage      = "https://github.com/lalalainexd/hatolence"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client"
  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
