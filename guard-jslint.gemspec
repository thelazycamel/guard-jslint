# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "guard-jslint"
  spec.version       = "0.0.1"
  spec.authors       = ["Stuart Hanscombe"]
  spec.email         = ["hanscs1969@yahoo.co.uk"]
  spec.summary       = %q{Add Jslint to your Guardfile.}
  spec.description   = %q{Run your specs with Jslint watching your javascripts. BETA}
  spec.homepage      = "https://github.com/thelazycamel/guard-jslint"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_dependency 'guard-compat', '~> 1.1'
  spec.add_dependency 'jslint', '~> 1'
end
