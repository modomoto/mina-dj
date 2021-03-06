# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/delayed_jobs/version'

Gem::Specification.new do |spec|
  spec.name          = "mina-dj"
  spec.version       = Mina::DelayedJobs::VERSION
  spec.authors       = ["Daniel Senff"]
  spec.email         = ["daniel.senff@modomoto.de"]
  spec.summary       = %q{Tasks for working with delayed_jobs in your Mina deployment setup.}
  spec.description   = %q{Tasks for running delayed_jobs with Mina.}
  spec.homepage      = "http://github.com/modomoto/mina-dj"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rake"
  spec.add_dependency "mina", ">= 0.2.1"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
end
