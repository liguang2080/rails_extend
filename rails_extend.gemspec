# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails_extend/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["lg2046"]
  gem.email         = ["lg2046@gmail.com"]
  gem.description   = %q{Rails extend}
  gem.summary       = %q{Rails extend}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rails_extend"
  gem.require_paths = ["lib"]

  gem.add_dependency "rails"

  gem.version       = RailsExtend::VERSION
end
