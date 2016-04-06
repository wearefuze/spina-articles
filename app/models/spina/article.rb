module Spina
  class Article < ActiveRecord::Base
    validates :title, :body, :author, :publish_date, :slug, presence: true
  end
end
