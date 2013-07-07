# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paramsfile/version'

Gem::Specification.new do |gem|
  gem.name          = 'paramsfile'
  gem.version       = Paramsfile::VERSION
  gem.authors       = ['Gareth Rees']
  gem.email         = ['gareth@garethrees.co.uk']
  gem.description   = %q{Dynamically generate configuration files with YAML and Mustache}
  gem.summary       = %q{YAML -> Mustache -> Configuration File}
  gem.homepage      = 'http://github.com/garethrees/paramsfile'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'mustache'

end
