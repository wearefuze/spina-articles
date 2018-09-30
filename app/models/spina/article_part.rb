module Spina
  class ArticlePart < ApplicationRecord
    belongs_to :article, optional: true

    has_many :page_parts, as: :page_partable, dependent: :destroy
    has_many :layout_parts, as: :layout_partable, dependent: :destroy
    has_many :structure_parts, as: :structure_partable, dependent: :destroy

    def content
      article
    end
  end
end
