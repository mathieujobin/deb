# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deb/version'

Gem::Specification.new do |spec|
  spec.name          = "deb"
  spec.version       = Deb::VERSION
  spec.authors       = ["Mathieu Jobin"]
  spec.email         = ["mathieu@justbudget.com"]
  spec.summary       = %q{Wrapper tool over apt* gpkg* with a rpm/yum command line interface.}
  spec.description   = "Learning how to use all of the debian tools is annoying. but Debian and *buntu has become better. So, here is the tool to close the gap."
  spec.homepage      = "https://github.com/somekool/deb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'thor', '~> 0'
end
