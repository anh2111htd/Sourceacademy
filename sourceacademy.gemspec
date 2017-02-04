$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sourceacademy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sourceacademy"
  s.version     = Sourceacademy::VERSION
  s.authors     = ["lth08091998"]
  s.email       = ["lth08091998@gmail.com"]
  s.homepage    = "http:/github.com/lth08091998"
  s.summary     = "Summary"
  s.description = "Description"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
