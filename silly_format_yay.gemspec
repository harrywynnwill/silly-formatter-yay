# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'lib/silly_format_yay/version'

Gem::Specification.new do |spec|
  spec.name          = "silly_format_yay"
  spec.version       = '0.1.1'
  spec.authors       = ["Macey Baker"]
  spec.email         = ["macebake@gmail.com"]

  spec.summary       = %q{A silly gem that emojifies your RSpec output}
  spec.homepage      = "https://github.com/macebake/silly-formatter-yay"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = 'http://rubygems.com'
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = Dir["lib/**/**/*.rb"]
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "colorize"

end
