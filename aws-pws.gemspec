# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'aws/pws/version'

Gem::Specification.new do |spec|
  spec.name          = 'aws-pws'
  spec.version       = AWS::PWS::VERSION
  spec.authors       = ['Frank Macreery']
  spec.email         = ['frank@macreery.com']
  spec.description   = 'A password-protected CredentialProvider for AWS'
  spec.summary       = 'A password-protected CredentialProvider for AWS'
  spec.homepage      = 'https://github.com/fancyremarker/aws-pws'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_dependency 'pws'
  spec.add_dependency 'aws-sdk'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'aptible-tasks'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.0'
end
