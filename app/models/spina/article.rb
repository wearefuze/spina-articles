module Spina
  class Article < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: :slugged

    belongs_to :image, optional: true

    validates :title, :body, :author, :publish_date, presence: true
    validates :slug, uniqueness: true

    scope :live, -> { where('publish_date <= ? AND draft = ?', Date.today, 0) }
    scope :newest_first, -> { order('publish_date DESC') }

    def live?
      true if self.publish_date <= Date.today && draft == 0
    end

    def scheduled?
      true if self.publish_date >= Date.today && draft == 0
    end

    def draft?
      draft == 1
    end

    def next_article
      self.class.live.where("id > ?", id).order("id ASC").first
    end

    def prev_article
      self.class.live.where("id < ?", id).order("id DESC").first
    end
  end
end
