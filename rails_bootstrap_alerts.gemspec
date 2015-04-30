# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_bootstrap_alerts/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_bootstrap_alerts"
  spec.version       = RailsBootstrapAlerts::VERSION
  spec.authors       = ["Przemyslaw Krowinski"]
  spec.email         = ["hello@krowinski.com"]

  spec.summary       = %q{Simple helper for adding quickly adding bootstrap classes to existing rails messages}
  spec.homepage      = "https://github.com/archdragon/rails_bootstrap_alerts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
