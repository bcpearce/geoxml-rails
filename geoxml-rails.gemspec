# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geoxml/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "geoxml-rails"
  spec.version       = Geoxml::Rails::VERSION
  spec.authors       = ["Benjamin Pearce"]
  spec.email         = ["hawk.git@bcpearce.com"]

  if spec.respond_to?(:metadata)
  end

  spec.summary       = "Inserts GeoXML3.js into the Rails asset pipeline."
  spec.homepage      = "http://github.com/bcpearce/geoxml-rails"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
