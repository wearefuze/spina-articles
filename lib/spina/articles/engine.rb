module Spina
  module Articles
    class Engine < ::Rails::Engine
      config.before_initialize do
        ::Spina::Plugin.register do |plugin|
          plugin.name = 'articles'
          plugin.namespace = 'articles'
        end
      end
    end
  end
end
