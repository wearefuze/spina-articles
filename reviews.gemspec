$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spina/articles/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-articles"
  s.version     = Spina::Articles::VERSION
  s.authors     = ["Dan Mitchell"]
  s.email       = ["dan@digitalreflow.co.uk"]
  s.homepage    = "http://www.digitalreflow.com"
  s.summary     = "News/Blog plugin for Spina"
  s.description = "Plugin for Spina CMS to include a news or blog on your website"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 5.0"
end
