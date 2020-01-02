
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yukiusagi/version"

Gem::Specification.new do |spec|
  spec.name          = "yukiusagi"
  spec.version       = Yukiusagi::VERSION
  spec.authors       = ["Eishi Saito", "Yuh Harata", "Sayaka Osanai"]
  spec.email         = ["saito@eishis.com"]

  spec.summary       = %q{Css package and html template for Admin page.}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jquery-rails"
  spec.add_dependency 'sassc-rails', '~> 2.1'
  spec.add_dependency "font-awesome-sass", "~> 5.6.1"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
