$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require "spina/articles/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spina-articles"
  s.version     = Spina::Articles::VERSION
  s.authors     = ["Dan Mitchell"]
  s.email       = ["dan@danmitchell.co.uk"]
  s.homepage    = "http://www.danmitchell.co.uk"
  s.summary     = "Articles plugin for Spina"
  s.description = "Plugin for Spina CMS to include a news or blog on your website"
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_runtime_dependency 'friendly_id', '~> 5.2', '>= 5.2.1'
  s.add_runtime_dependency 'spina', '>= 1.0.0'

  s.add_development_dependency 'pg'
end
