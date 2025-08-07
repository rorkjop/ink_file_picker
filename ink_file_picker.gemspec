# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ink_file_picker/version'

Gem::Specification.new do |spec|
  spec.name          = "ink_file_picker"
  spec.version       = InkFilePicker::VERSION
  spec.authors       = ["Thorbjørn Hermansen"]
  spec.email         = ["thhermansen@gmail.com"]
  spec.summary       = %q{Client for Ink File Picker}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "< 1.9"
  spec.add_dependency "faraday-multipart"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rspec", "~> 3.13"
end
