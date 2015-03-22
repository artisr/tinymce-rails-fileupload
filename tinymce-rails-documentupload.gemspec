# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tinymce/rails/documentupload/version'

Gem::Specification.new do |spec|
  spec.name          = "tinymce-rails-documentupload"
  spec.version       = Tinymce::Rails::Documentupload::VERSION
  spec.authors       = ["Dreyer Calitz"]
  spec.email         = ["fdcalitz@gmail.com"]
  spec.homepage      = ""
  spec.summary       = %q{TinyMCE plugin for document uploads in Rails >= 4.0}
  spec.description   = %q{TinyMCE plugin for document uploads in Rails >= 4.0. Document storage is handled manually, so works with everything.}
  spec.files         = [
                         Dir["app/assets/javascripts/tinymce/plugins/uploaddocument/**/*.js"],
                         Dir["lib/**/*.rb"],
                         "lib/tasks/tinymce-uploaddocument-assets.rake",
                         "CHANGELOG.md",
                         "LICENSE.txt",
                         "README.md",
                       ].flatten
  spec.test_files    = []
  spec.require_paths = ["lib"]
  spec.license       = "MIT"

  spec.add_runtime_dependency     "railties",      ">= 4.0", "< 5"
  spec.add_runtime_dependency     "tinymce-rails", "~> 4.0"
  spec.add_development_dependency "bundler",       "~> 1.6"
  spec.add_development_dependency "rails",         ">= 4.0"
end
