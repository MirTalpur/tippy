# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tippy/version'

Gem::Specification.new do |spec|
  spec.name          = "tippy"
  spec.version       = Tippy::VERSION
  spec.authors       = ["Mir Ali Talpur"]
  spec.email         = ["hskalee123@gmail.com"]

  spec.summary       = %q{A gem for generating tip values on based on number of inputs.}
  spec.homepage      = "https://github.com/MirTalpur/tippy"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
