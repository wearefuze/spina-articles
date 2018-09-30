# frozen_string_literal: true

module Spina
  module Articles
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Articles'
    self.controller = 'articles'
    self.description = 'Articles for blog or news'
    self.spina_icon = 'pencil-outline'

    self.plugin_type = 'website_resource'
  end
end
