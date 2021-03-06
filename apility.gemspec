# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apility/version'
#require 'moocher/banner'

Gem::Specification.new do |spec|
  spec.name          = "apility"
  spec.version       = Apility::VERSION
  spec.authors       = ["Suyesh Bhandari"]
  spec.email         = ["suyeshb@gmail.com"]

  spec.summary       = "Ruby interface for Apility api"
  spec.description   = "Keep Moochers Out. Ruby interface for Apility api, A Reputation API and Anti-Abuse Service."
  spec.homepage      = "https://github.com/suyesh/apility-ruby"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  #spec.post_install_message = Moocher::Banner.new.to_s
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'httparty', '~> 0.14.0'
  spec.add_dependency 'ipaddress', '~> 0.8.3'
end
