# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record_events/version'

Gem::Specification.new do |spec|
  spec.name          = "active_record_events"
  spec.version       = ActiveRecordEvents::VERSION
  spec.authors       = ["Trey Griffith"]
  spec.email         = ["trey.griffith@gmail.com"]
  spec.summary       = %q{Listen to lifecycle events for ActiveRecord models}
  spec.description   = %q{Broadcasts lifecycle events (create, update, destroy) for ActiveRecord models}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
