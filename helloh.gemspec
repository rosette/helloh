# encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)
require "helloh"

spec = Gem::Specification.new do |s|
  s.name         = "helloh"
  s.version      = Helloh::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = "Rémi Prévost"
  s.email        = "remi@exomel.com"
  s.homepage     = "http://github.com/rosette/helloh"
  s.summary      = "Helloh compares Rails l10n files"
  s.description  = "Helloh compares Rails localization files and looks for missing keys."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ["lib"]
  s.require_path = "lib"

  s.add_development_dependency "rake", "~> 0.9.2"
end
