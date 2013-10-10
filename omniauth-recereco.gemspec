# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-recereco/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-recereco"
  spec.version       = Omniauth::Recereco::VERSION
  spec.authors       = ["gogotanaka"]
  spec.email         = ["tanaka@consultant.com"]
  spec.description   = %q{OmniAuth strategy for ReceReco}
  spec.summary       = %q{OmniAuth strategy for ReceReco}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'multi_json', '~> 1.3'
  spec.add_development_dependency 'omniauth-oauth', '~> 1.0'

end
