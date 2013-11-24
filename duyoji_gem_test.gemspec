# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'duyoji_gem_test/version'

Gem::Specification.new do |spec|
  spec.name          = "duyoji_gem_test"
  spec.version       = DuyojiGemTest::VERSION
  spec.authors       = ["Tsuyoshi Maedaa"]
  spec.email         = ["oasis5tsuyoshi@gmail.com"]
  spec.description   = %q{this is duyoji_gem_test description}
  spec.summary       = %q{this is duyoji_gem_test summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "json", ">= 1.7.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "minitest"
end
