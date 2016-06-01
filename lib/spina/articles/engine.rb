module Spina
  module Articles
    class Engine < ::Rails::Engine
      initializer 'spina.plugin.register.spina_articles', before: :load_config_initializers do
        ::Spina::Plugin.register do |plugin|
          plugin.name = 'Articles'
          plugin.namespace = 'articles'
        end
      end
    end
  end
end
