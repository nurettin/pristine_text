# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pristine_text/version'

Gem::Specification.new do |spec|
  spec.name          = "pristine_text"
  spec.version       = PristineText::VERSION
  spec.authors       = ["Nurettin Onur TUĞCU"]
  spec.email         = ["onurtugcu@gmail.com"]
  spec.summary       = %q{Lowercase, squeeze, stem text.}
  spec.description   = %q{This gem uses unicode_utils to lowercase text, removes non-letters, strips and squeezes whitespace, then optionally uses stemwords (from libstemming-tools) to stem every word.}
  spec.homepage      = "https://github.com/nurettin/pristine_text"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'unicode_utils', '>= 0'
  spec.add_dependency 'htmlentities', '>= 0'
  spec.required_ruby_version= '~> 2.1'
end
