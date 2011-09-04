spec = Gem::Specification.new do |s|
  s.name         = "helloh"
  s.version      = "0.2"
  s.platform     = Gem::Platform::RUBY
  s.authors      = "Rémi Prévost"
  s.email        = "remi@exomel.com"
  s.homepage     = "http://github.com/remiprev/helloh"
  s.summary      = "Helloh compares Rails l10n files"
  s.description  = "Helloh compares Rails localization files and looks for missing keys."
  s.files        = Dir["lib/**/*.rb", "README.mkd", "LICENSE", "bin/*"]
  s.require_path = "lib"
  s.executables << "helloh"
end
