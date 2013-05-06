# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nytimes-article/version'

Gem::Specification.new do |spec|
  spec.name          = "nytimes-article-search"
  spec.version       = NytimesArticle::VERSION
  spec.authors       = ["Kazuhiro Yamada"]
  spec.email         = ["yamadakazu45@gmail.com"]
  spec.description   = %q{A thin Ruby client for The New York Times Article Search API}
  spec.summary       = %q{A thin Ruby client for The New York Times Article Search API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
