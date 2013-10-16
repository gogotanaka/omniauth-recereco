# coding: utf-8
require File.expand_path('../lib/omniauth-recereco/version', __FILE__)

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

  spec.add_dependency 'multi_json', '~> 1.3'
  spec.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
end
